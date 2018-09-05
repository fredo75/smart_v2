class MembersController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @survey = current_user.surveys.last
    @users = User.all
    if params["type"].present?
      @users = User.global_search(params["type"])
    end
    # raise
    @follow = Follow.new

  end

private

  def user_params
    params.require(:user).permit(:mybio, :photo, :username)
  end

end

