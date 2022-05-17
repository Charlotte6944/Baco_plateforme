class InscriptionsTournoiPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  attr_reader :user, :tournois_inscription

  def initialize(user, tournois_inscription)
    @user = user
    @tournois_inscription = tournois_inscription
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
