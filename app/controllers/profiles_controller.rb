class ProfilesController < ApplicationController

  def index
    raise
    @user = User.find(params[:id])
  end

  def show
    @survey = current_user.surveys.last
    @user = User.find(params[:id])
    unless @user.surveys.empty?
      @points = [
        @user.surveys.last.transportation_score_updated,
        @user.surveys.last.food_score_updated,
        @user.surveys.last.upcycling_calculation_updated,
        @user.surveys.last.energy_score_updated,
      ]
      @final_score = @user.surveys.last.total_user_score_updated
    end
    authorize @user
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    authorize @user
      if @user.update(user_params)
        redirect_to profile_path(@user.id)
      else
      end
  end
end
