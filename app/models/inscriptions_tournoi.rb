class InscriptionsTournoi < ApplicationRecord
  belongs_to :user
  belongs_to :tournoi
  validates :date_inscription, :user_id, :tournoi_id, presence: true
end
