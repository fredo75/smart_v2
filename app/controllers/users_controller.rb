class UsersController < ApplicationController



  def update
    @user = current_user
    @user.update!(user_params)
    redirect_to profile_path(@user.id)
    @user.username = params[:username]
    @user.mybio = params[:mybio]
    authorize @user

  end

  def results
    @user = User.find(params[:id])
    authorize @user
    @points = [
      @user.surveys.last.transportation_score,
      @user.surveys.last.food_score,
      @user.surveys.last.upcycling_calculation,
      @user.surveys.last.energy_score,
    ]
      @final_score = @user.surveys.last.total_user_score
  end

    def results_2
    @user = User.find(params[:id])
    authorize @user
    @points = [
      @user.surveys.last.transportation_score_updated,
      @user.surveys.last.food_score_updated,
      @user.surveys.last.upcycling_calculation_updated,
      @user.surveys.last.energy_score_updated,
    ]
      @final_score = @user.surveys.last.total_user_score_updated
  end


  def show
    # @user = User.find(params[:id])
    @user = current_user
    @survey = current_user.surveys.last
    if @survey.nil?
      @survey = Survey.create(user: current_user)
    end
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:mybio, :photo, :username)
  end
end
