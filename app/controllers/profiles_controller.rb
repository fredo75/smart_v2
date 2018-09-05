class ProfilesController < ApplicationController

  def show
    @survey = current_user.surveys.last
    @user = User.find(params[:id])
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
