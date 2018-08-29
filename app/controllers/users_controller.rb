class UsersController < ApplicationController


def show
  @user = current_user
  # @users = policy_scope(User).order(created_at: :desc)
  authorize @user
end

end
