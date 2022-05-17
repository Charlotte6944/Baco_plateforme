class TournoiPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  attr_reader :user, :tournoi

  def initialize(user, tournoi)
    @user = user
    @tournoi = tournoi
  end

  def index?
    true
  end

  def create?
    user.role == 'admin'
  end

  def update?
    user.role == 'admin'
  end

  def destroy?
    user.role == 'admin'
  end
end
