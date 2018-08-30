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
