class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    edit?
  end

  def create?
    edit?
  end

  def edit?
    user.admin?
  end

  def update?
    edit?
  end
end
