class FollowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.liked_users.uniq
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
