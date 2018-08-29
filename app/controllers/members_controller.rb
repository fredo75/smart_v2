class MembersController < ApplicationController


  def index
    @members = policy_scope(member).order(created_at: :desc)
  end

  def show
    @member = current_user
  end

end
