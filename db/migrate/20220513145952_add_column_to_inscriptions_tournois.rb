class AddColumnToInscriptionsTournois < ActiveRecord::Migration[6.1]
  def change
    add_reference :inscriptions_tournois, :user, foreign_key: true
    add_reference :inscriptions_tournois, :tournoi, foreign_key: true
  end
end
