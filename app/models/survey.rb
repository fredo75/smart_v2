class Survey < ApplicationRecord
  belongs_to :user
  # mount_uploader :photo, PhotoUploader


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


  def total_user_score
    society_factor = 1.2

    @total_user_score = society_factor + food_score + energy_score + transportation_score + upcycling_calculation + green_invest_calculation

  end



  AREA = [["> 30m2", 30], [" 30 < area > 50m2", 50], [" 50 < area > 70m2", 70], [" 70 < area > 100m2", 100], [" 100 < area > 130m2", 130], ["+130m2", 160]]
  HEAT_TYPE = [["Fioul", 0.329], ["Gas", 0.241], ["Electric standard", 0.325], ["Electric Green", 0.007], ["Wood", 0.015]]
  CHILDREN_INHABITANTS = [["No children !", 0], ["Only one", 1], ["2", 2], ["3", 3], ["4", 4], ["+4", 5]]
  ADULTS_INHABITANTS = [["Only one: me!", 1], ["two", 2], ["three", 3], ["4", 4], ["+4", 5]]
  TEMPERATURE = [["- 17°C: like in a freezer!", -0.06], ["19°C at max", -0.03], ["Around 21°C", 0], ["Around 23°C...!", 0.03]]
  # ISOLATION = [["I don't care!", 8], ["I don't know, more than 10 years", 7], ["I don't know, more than 10 years", 5], ["minimum A", 6], ["minimum A+", 4], ["Minimum A++", 3]]


  VEG_SEASON = [["Less than 25%!", 0.59], ["Around 25%", 0.44], ["Around 50%", 0.3], ["Around 75%", 0.15], ["100%: I'm so seasonal!", 0.04]]
  EATING_HAB = [["2 times/day", 1.21], ["1 time/day", 0.63], ["1 to 3 times/week", 0.14], ["1/week", 0.06], ["I am Vegi!", 0.03]]
  BIO = [["I purchase only organic food!", -0.18], ["75%", -0.13], ["50%", -0.08], ["25%", -0.03], ["Never, I purchase cheap food!", 0.01]]

  VEHICULE_KM = [["+ 30,000 km", 30000], [" 7,500 < KM/year > 12,500", 12500], [" 2000 < KM/year > 7,500", 7500],[" - 2000 KM/year", 2000], ["No car !!", 0]]
  FUEL =[["Petrol", 0.88], ["Gazoil", 1]]
  PUBLIC_TRANSP =[["None, I use my feet!", 0], ["- 5km / day", 5], ["Between 5 and 15km", 15], ["Between 15 and 40km", 40], ["+ 40km", 60]]

  UPCYCLING =[["I have a compost", 0.7], ["Most of the time", 0.8], ["From time to time", 0.9], ["No effort at all...!", 1]]

  INVEST = [["I don't know", 0], ["Few investment", -0.02], ["Regurlar investment", -0.05], ["Full investment", -0.07]]
  TYPE_HOUSE = [["House", 22], ["Appartment", 16]]

end

