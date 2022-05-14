class Tournoi < ApplicationRecord
  validates :nom, :ville, :date_tournoi, :inscription_max, :catégories, presence: true
  has_many :inscriptions_tournois, dependent: :destroy
  validate :inscription_max_before_date_tournoi

  private

  def inscription_max_before_date_tournoi
    if inscription_max.present? && date_tournoi.present? && inscription_max > date_tournoi
      errors.add(:inscription_max, 'doit être avant la date du tournoi')
    end
  end
end
