class CreateTournois < ActiveRecord::Migration[6.1]
  def change
    create_table :tournois do |t|
      t.string :nom
      t.string :ville
      t.date :date_tournoi
      t.date :inscription_max
      t.string :catégories

      t.timestamps
    end
  end
end
