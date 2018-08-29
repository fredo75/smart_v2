class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
  end

  def update
    @user = current_user
    @user.update!(user_params)
    redirect_to profile_path(@user.id)
  end

end
