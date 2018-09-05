class FollowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.liked_users.order(score: :desc).uniq
      # User.all.where.not(score: nil).order(score: :desc)
    end
  end


  def create?
    # record.user == user
    return true
  end

  def show?
    return true
  end
end
