class NullObjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def admin?
    user.admin?
  end
end
