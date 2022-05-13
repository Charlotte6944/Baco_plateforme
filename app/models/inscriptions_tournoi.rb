class InscriptionsTournoi < ApplicationRecord
  belongs_to :user_id
  belongs_to :tournoi_id
end
