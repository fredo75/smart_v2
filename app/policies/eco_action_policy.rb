class EcoActionPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user == user
  end

  def show?
    true
  end

  def new?
    return true
  end

  def index?
    return true
  end

  def update?
    true
  end

  def edit?
    true
  end

  def destroy?
    record.user == user
  end
end
