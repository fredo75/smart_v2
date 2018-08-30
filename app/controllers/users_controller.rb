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
      @user.surveys.first.transportation_score,
      @user.surveys.first.food_score,
      @user.surveys.first.upcycling_calculation,
      @user.surveys.first.energy_score,
    ]
      @final_score = @user.surveys.first.total_user_score
  end


  def show
    # @user = User.find(params[:id])
    @user = current_user
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:mybio, :photo, :username)
  end
end
