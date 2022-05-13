class CreateInscriptionsTournois < ActiveRecord::Migration[6.1]
  def change
    create_table :inscriptions_tournois do |t|
      t.date :date_inscription
      t.boolean :validation_inscription_tournoi

      t.timestamps
    end
  end
end
