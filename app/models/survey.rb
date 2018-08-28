class Survey < ApplicationRecord
  belongs_to :user
  # mount_uploader :photo, PhotoUploader


  def food_calculation_adult
    meal_per_person = 730
    coef_adult_meal = 2.27
    adult = self.house_inhabitants
    @adult_food_calculation = (adult * meal_per_person * coef_adult_meal)/1000
  end

  def food_calculation_children
    meal_per_person = 730
    coef_child_meal = 0.44
    child = self.children_inhabitants
    @child_food_calculation = (@children_inhabitants * meal_per_person * coef_child_meal)/1000
  end

   def vegetable_calculation
    @vegetable_calculation = self.vegetable_season * 1000
  end

  def eating_habits_calculation
    @eating_habits_calculation = self.eating_habits * 1000
  end

  def bio_buying_calculation
    @bio_buying_calculation = self.bio_buyings * 1000
  end

  def food_score
    @food_score = @adult_food_calculation + @child_food_calculation + @vegetable_calculation + @eating_habits_calculation + @bio_buying_calculation
  end

  def housing_type_area_calculation
    new_housing = self.housing_type
    new_area = self.area
    @housing_type_area_calculation = new_housing * new_area
  end

  TYPE_HOUSE = [["building", 16], ["house", 22]]
  AREA = [["Less than 30m2", 30], ["Between 30 and 50m2", 50], ["between 50 and 70m2", 70], ["Between 70 and 100m2", 100], ["Between 100 and 130m2", 130], ["+130m2", 160]]
  HEAT_TYPE = [["Fioul", 3290], ["Gas", 2410], ["Electric standard", 3250], ["Electric Green", 70], ["Wood", 150]]
  INHABITANTS = [["Only one: me!", 1], ["two", 2], ["three", 3], ["4", 4], ["+4", 5]]
  TEMPERATURE = [["Less than 17: like in a freezer!", 9], ["19 max", 10 ], ["Around 21", 11], ["Around 23", 12], ["+24: I live in the jungle!", 13]]
  ISOLATION = [["I don't care!", 8], ["I don't know, more than 10 years", 7], ["I don't know, more than 10 years", 5], ["minimum A", 6], ["minimum A+", 4], ["Minimum A++", 3]]


  VEG_SEASON = [["Less than 25%, I do't make any effort!", 59], ["Around 25%", 44], ["Around 50%", 30], ["Around 75%", 15], ["100%: I live with the seasons!", 4]]
  EATING_HAB = [["3 times everay day, I am a tiger!", 145], ["2/day", 121], ["1/day", 63], ["4 to 6/week", 34], ["1 to 3/week", 14], ["1/week", 6], ["I am Vegi!", 3]]
  BIO = [["I purchase only organic food!", -18], ["75%", -13], ["50%", -8], ["25%", -3], ["Never, the cheaper the better!", 1]]

  VEHICULE_KM = [["More than 30,000 km", 30000], ["Between 7,500 and  12,500", 12500], ["Between 2000 and  7,500", 7500],["Less than 2000", 2000], ["No car!!!!", 0]]
  FUEL =[["Petrol", 88], ["Gazoil", 100]]
  PUBLIC_TRANSP =[["none, I use my feet!", 0], ["Less than 5km", 5], ["Between 5 and 15km", 15], ["Between 15 and 40km", 40], ["More than 40km", 60]]

  UPCYCLING =[["I have a compost", 1], ["I sort garbage most part of the time", 2], ["I sort garbage from time to time", 3], ["no effort at all!", 4]]

  INVEST = [["I don't know",0], ["few investment", -2], ["Yes I invest regurlarly in green Eco", -5], ["All my money is invested into Green", -7]]



end

