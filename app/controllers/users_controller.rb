class UsersController < ApplicationController



  def update
    @user = current_user
    @user.update!(user_params)
    redirect_to profile_path(@user.id)
    authorize @user
  end

  def user_params
    params.require(:user).permit(:mybio, :photo)
  end

  def show
    @user = current_user
    # @users = policy_scope(User).order(created_at: :desc)
    authorize @user
  end


end
