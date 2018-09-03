class MembersController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @users = User.all
    if params["type"].present?
      @users = User.global_search(params["type"])
    end

  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end


private

  def user_params
    params.require(:user).permit(:mybio, :photo, :username)
  end

end

