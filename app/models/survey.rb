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


end
