class Tournoi < ApplicationRecord
  validates :nom, :ville, :date_tournoi, :inscription_max, presence: true
end
