class OrderPolicy < ApplicationPolicy
  def new?
    create?
  end

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
