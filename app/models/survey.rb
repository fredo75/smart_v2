class Survey < ApplicationRecord
  belongs_to :user
  # mount_uploader :photo, PhotoUploader


  def food_calculation_adult
    meal_per_person = 730
    coef_adult_meal = 2.27
    adult = self.adults_inhabitants
    @adult_food_calculation = (adult * meal_per_person * coef_adult_meal)/1000
  end

  def food_calculation_children
    meal_per_person = 730
    coef_child_meal = 0.44
    child = self.children_inhabitants
    @child_food_calculation = (child * meal_per_person * coef_child_meal)/1000
  end

   def vegetable_calculation
    vegetable_season_buying = self.vegetable_season
    @vegetable_calculation = vegetable_season_buying
  end

  def eating_habits_calculation
    @eating_habits_calculation = self.eating_habits
  end


  def bio_buying_calculation
    @bio_buying_calculation = self.bio_buyings
  end

  def food_score
    @food_score = food_calculation_adult + food_calculation_children + vegetable_calculation + eating_habits_calculation + bio_buying_calculation
  end

  def housing_type_area_calculation
    (self.housing_type * self.area).fdiv(1000)
  end

  def house_temp_calculation
    av_inhab_cons = 1.334
    new_children_inhabitants = self.children_inhabitants
    new_adults_inhabitants = self.adults_inhabitants
    @house_temp_calculation = av_inhab_cons * (new_children_inhabitants + new_adults_inhabitants) + self.house_temp + self.heat_type
  end

  def energy_score
    @energy_score = house_temp_calculation + house_temp_calculation
  end

  def upcycling_calculation
    inhab_waste_av = 345
    total_adults_inhabitants = self.adults_inhabitants
    total_children_inhabitants = self.children_inhabitants
    @upcycling_calculation = (inhab_waste_av * (total_adults_inhabitants + total_children_inhabitants) * self.upcycling) / 1000
  end

  def transportation_calculation
    emission_factor = 0.216
    total_vehicle_km = self.vehicule_km
    @transportation_calculation = (total_vehicle_km * emission_factor) / 1000
  end

  def fuel_calculation
    new_fuel_type = self.fuel_type
    @fuel_calculation = new_fuel_type * transportation_calculation
  end

  def public_transportation_calculation
    public_emission_factor = 0.155
    new_public_transportation = self.public_transp
    @public_transportation_calculation = (new_public_transportation * public_emission_factor) / 1000
  end

  def transportation_score
    @transportation_score = transportation_calculation + fuel_calculation + public_transportation_calculation
  end

  def green_invest_calculation
    @new_green_invest = self.green_invest
  end


  def total_user_score
    society_factor = 1.2
    @total_user_score = society_factor + food_score + energy_score + transportation_score + upcycling_calculation + green_invest_calculation
  end



  AREA = [["Less than 30m2", 30], ["Between 30 and 50m2", 50], ["between 50 and 70m2", 70], ["Between 70 and 100m2", 100], ["Between 100 and 130m2", 130], ["+130m2", 160]]
  HEAT_TYPE = [["Fioul", 0.329], ["Gas", 0.241], ["Electric standard", 0.325], ["Electric Green", 0.007], ["Wood", 0.015]]
  CHILDREN_INHABITANTS = [["zero", 0], ["one", 1], ["two", 2], ["three", 3], ["4", 4], ["+4", 5]]
  ADULTS_INHABITANTS = [["Only one: me!", 1], ["two", 2], ["three", 3], ["4", 4], ["+4", 5]]
  TEMPERATURE = [["Less than 17: like in a freezer!", -0.06], ["19 max", -0.03], ["Around 21", 0], ["Around 23", 0.03]]
  # ISOLATION = [["I don't care!", 8], ["I don't know, more than 10 years", 7], ["I don't know, more than 10 years", 5], ["minimum A", 6], ["minimum A+", 4], ["Minimum A++", 3]]


  VEG_SEASON = [["Less than 25%!", 0.59], ["Around 25%", 0.44], ["Around 50%", 0.3], ["Around 75%", 0.15], ["100%: I'm so seasonal!", 0.04]]
  EATING_HAB = [["2 times/day", 1.21], ["1 time/day", 0.63], ["1 to 3 times/week", 0.14], ["1/week", 0.06], ["I am Vegi!", 0.03]]
  BIO = [["I purchase only organic food!", -0.18], ["75%", -0.13], ["50%", -0.08], ["25%", -0.03], ["Never, the cheaper the better!", 0.01]]

  VEHICULE_KM = [["More than 30,000 km", 30000], ["Between 7,500 and  12,500", 12500], ["Between 2000 and  7,500", 7500],["Less than 2000", 2000], ["No car!!!!", 0]]
  FUEL =[["Petrol", 0.88], ["Gazoil", 1]]
  PUBLIC_TRANSP =[["none, I use my feet!", 0], ["Less than 5km", 5], ["Between 5 and 15km", 15], ["Between 15 and 40km", 40], ["More than 40km", 60]]

  UPCYCLING =[["I have a compost", 0.7], ["I sort garbage most part of the time", 0.8], ["I sort garbage from time to time", 0.9], ["no effort at all!", 1]]

  INVEST = [["I don't know", 0], ["few investment", -0.02], ["Yes I invest regurlarly in green Eco", -0.05], ["All my money is invested into Green", -0.07]]
  TYPE_HOUSE = [["house", 22], ["appartment", 16]]


end

