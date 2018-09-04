class FollowsController < ApplicationController


  def create
    followee = params[:follow][:follow].to_i
    follower = current_user[:id]
    @follow = Follow.create(follower_id: follower, followee_id: followee)
    authorize @follow
    redirect_to member_path(@follow)

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
