class MembersController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @user = current_user
    @survey = current_user.surveys.last
    @users = User.all
    # .sort {|x,y| x.surveys.last&.total_user_score_updated <=> y.surveys.last&.total_user_score_updated }
    if params["type"].present?
      @users = User.global_search(params["type"]).sort {|x,y| x.surveys.last&.total_user_score_updated <=> y.surveys.last&.total_user_score_updated }
    end
    # raise
    @follow = Follow.new
    # @final_score = @user.surveys.last.total_user_score_updated

  end

private

  def user_params
    params.require(:user).permit(:mybio, :photo, :username)
  end

end

