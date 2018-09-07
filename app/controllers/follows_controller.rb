class FollowsController < ApplicationController


  def create
    followee = params[:follow][:follow].to_i
    follower = current_user[:id]
    @follow = Follow.create(follower_id: follower, followee_id: followee)
    authorize @follow
    redirect_to follows_path

  end

  def index
    @user = current_user
    @survey = current_user.surveys.last
    @friends = policy_scope(Follow).sort {|x,y| x.surveys.last&.total_user_score_updated <=> y.surveys.last&.total_user_score_updated }#.sort{ |f1, f2| f1.score <=> f2.score }



    # @friends = current_user.liked_users.uniq
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follow_params
      params.require(:follow).permit(:follower_id, :followee_id)
    end


end
