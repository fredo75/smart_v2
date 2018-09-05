class SurveyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    record.user == user
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def index?
    return true
  end

  def update?
    record.user == user
  end

  def edit?
    record.user == user
  end


  def destroy?
    record.user == user
  end

   def questionAnswered?
    return true
  end


end
