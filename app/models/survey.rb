class Survey < ApplicationRecord
  belongs_to :user

  def food_calculation_adult
    meal_per_person = 730
    coef_adult_meal = 2.27
    adult = (self.adults_inhabitants || 0)
    @adult_food_calculation = (adult * meal_per_person * coef_adult_meal)/1000
  end

  def food_calculation_children
    meal_per_person = 730
    coef_child_meal = 0.44
    child = (self.children_inhabitants || 0)
    @child_food_calculation = (child * meal_per_person * coef_child_meal)/1000
  end

  def vegetable_calculation
    vegetable_season_buying = (self.vegetable_season || 0)
    @vegetable_calculation = vegetable_season_buying
  end

  def eating_habits_calculation
    @eating_habits_calculation = (self.eating_habits || 0)
  end


  def bio_buying_calculation
    @bio_buying_calculation = (self.bio_buyings || 0)
  end

  def food_score

    @food_score = (food_calculation_adult || 0) + (food_calculation_children || 0) + (vegetable_calculation || 0) + (eating_habits_calculation || 0) + (bio_buying_calculation || 0)
  end

  def housing_type_area_calculation
    (self.housing_type * self.area).fdiv(1000)
  end

  def house_temp_calculation
    av_inhab_cons = 1.334
    new_children_inhabitants = (self.children_inhabitants || 0)
    new_adults_inhabitants = (self.adults_inhabitants || 0)
    @house_temp_calculation = av_inhab_cons * (new_children_inhabitants + new_adults_inhabitants) + (self.house_temp || 0) + (self.heat_type || 0)
  end

  def energy_score
    @energy_score = house_temp_calculation + house_temp_calculation
  end

  def upcycling_calculation
    inhab_waste_av = 345
    total_adults_inhabitants = (self.adults_inhabitants || 0)
    total_children_inhabitants = (self.children_inhabitants || 0)
    @upcycling_calculation = (inhab_waste_av * (total_adults_inhabitants + total_children_inhabitants) * (self.upcycling || 0)) / 1000
  end

  def transportation_calculation
    emission_factor = 0.216
    total_vehicle_km = (self.vehicule_km || 0)
    @transportation_calculation = (total_vehicle_km * emission_factor) / 1000
  end

  def fuel_calculation
    new_fuel_type = (self.fuel_type || 0)
    @fuel_calculation = new_fuel_type * transportation_calculation
  end

  def public_transportation_calculation
    public_emission_factor = 0.155
    new_public_transportation = (self.public_transp || 0)
    @public_transportation_calculation = (new_public_transportation * public_emission_factor) / 1000
  end

  def transportation_score
    @transportation_score = transportation_calculation + fuel_calculation + public_transportation_calculation
  end

  def green_invest_calculation
    @new_green_invest = (self.green_invest || 0)
  end

  def eco_action_cat_transport
    @eco_actions = user.eco_actions
    @eco_action_cat_transport = 0
    @eco_actions.each do |eco_action|
      if eco_action.eco_category == "transport" && eco_action.added_to_survey
        @eco_action_cat_transport += eco_action.eco_scoring_total
      end
    end
    return @eco_action_cat_transport
  end

  def eco_action_cat_food
    @eco_actions = user.eco_actions
    @eco_action_cat_food = 0
    @eco_actions.each do |eco_action|
      if eco_action.eco_category == "food" && eco_action.added_to_survey
        @eco_action_cat_food += eco_action.eco_scoring_total
      end
    end
    return @eco_action_cat_food
  end

  def eco_action_cat_energy
    @eco_actions = user.eco_actions
    @eco_action_cat_energy = 0
    @eco_actions.each do |eco_action|
      if eco_action.eco_category == "house" && eco_action.added_to_survey
        @eco_action_cat_energy += eco_action.eco_scoring_total
      end
    end
    return @eco_action_cat_energy
  end

  def eco_action_cat_waste
    @eco_actions = user.eco_actions
    @eco_action_cat_waste = 0
    @eco_actions.each do |eco_action|
      if eco_action.eco_category == "trash" && eco_action.added_to_survey
        @eco_action_cat_waste += eco_action.eco_scoring_total
      end
    end
    return @eco_action_cat_waste
  end









  def energy_score_updated
    if eco_action_cat_energy.nil?
      @energy_score_updated = energy_score
    else
      @energy_score_updated = energy_score + eco_action_cat_energy
    end
    return @energy_score_updated
  end

  def transportation_score_updated
    if eco_action_cat_transport.nil?
      @transportation_score_updated = transportation_score
    else
    @transportation_score_updated = transportation_score + eco_action_cat_transport
    end
     return @transportation_score_updated
  end

  def upcycling_calculation_updated
    if eco_action_cat_waste.nil?
      @upcycling_calculation_updated = upcycling_calculation
    else
    @upcycling_calculation_updated = upcycling_calculation + eco_action_cat_waste
    end
    return @upcycling_calculation_updated
  end

  def food_score_updated
    if eco_action_cat_food.nil?
      @food_score_updated = food_score
    else
    @food_score_updated = food_score + eco_action_cat_food
    end
    return @food_score_updated
  end

  def total_user_score_updated
    society_factor = 1.2
    @total_user_score_updated = society_factor + food_score_updated + energy_score_updated + transportation_score_updated + upcycling_calculation_updated
    @total_user_score_updated.round(2)
  end



  # def Eco_action_score
  #   @eco_action_score = 0
  #   @user = @Survey.user
  #   @eco_actions = @user.EcoAction.all
  #   @eco_actions.each do |eco_action|
  #     if eco_action.added_to_survey?
  #       @eco_action_score += eco_action.eco_scoring_total
  #     else
  #     end
  # #   end

  # end





  def total_user_score
    society_factor = 1.2

    @total_user_score = society_factor + food_score + energy_score + transportation_score + upcycling_calculation + green_invest_calculation
    @total_user_score.round(2)
  end



  AREA = [["< 30m2", 30], [" 30 < area > 50m2", 50], [" 50 < area > 70m2", 70], [" 70 < area > 100m2", 100], [" 100 < area > 130m2", 130], ["+130m2", 160]]
  HEAT_TYPE = [["Fioul", 0.329], ["Gas", 0.241], ["Electric standard", 0.325], ["Electric Green", 0.007], ["Wood", 0.015]]
  CHILDREN_INHABITANTS = [["0", 0], ["1", 1], ["2", 2], ["3", 3], ["4", 4], ["> 4", 5]]
  ADULTS_INHABITANTS = [["1", 1], ["2", 2], ["3", 3], ["4", 4], ["> 4", 5]]
  TEMPERATURE = [["< 17°C", -0.06], [" max 19°C", -0.03], [">= 21°C", 0], [">= 23°C", 0.03]]
  # ISOLATION = [["I don't care!", 8], ["I don't know, more than 10 years", 7], ["I don't know, more than 10 years", 5], ["minimum A", 6], ["minimum A+", 4], ["Minimum A++", 3]]


  VEG_SEASON = [["< 25%!", 0.59], ["25%", 0.44], ["50%", 0.3], ["75%", 0.15], ["100%", 0.04]]
  EATING_HAB = [["2 times/day", 1.21], ["1 time/day", 0.63], ["1 to 3 times/week", 0.14], ["1/week", 0.06], ["Vegetarian", 0.03]]
  BIO = [["100%", -0.18], ["75%", -0.13], ["50%", -0.08], ["25%", -0.03], ["0%", 0.01]]

  VEHICULE_KM = [["+ 30,000 km", 30000], [" 7,500 < KM/year > 12,500", 12500], [" 2000 < KM/year > 7,500", 7500],[" - 2000 KM/year", 2000], ["No car", 0]]
  FUEL =[["Petrol", 0.88], ["Gazoil", 1]]
  PUBLIC_TRANSP =[["None, I use my feet!", 0], ["- 5km / day", 5], ["Between 5 and 15km", 15], ["Between 15 and 40km", 40], ["+ 40km", 60]]

  UPCYCLING =[["I have a compost", 0.7], ["Most of the time", 0.8], ["From time to time", 0.9], ["No effort at all...!", 1]]

  INVEST = [["I don't know", 0], ["Few investment", -0.02], ["Regurlar investment", -0.05], ["Full investment", -0.07]]
  TYPE_HOUSE = [["House", 22], ["Appartment", 16]]

end

