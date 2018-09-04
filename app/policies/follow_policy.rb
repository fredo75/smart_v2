class FollowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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
