class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def dashboard?
    user.admin? || user.order == record
  end

  def show?
    record.user == user
  end

  def create?
    record.user == user
  end
end
