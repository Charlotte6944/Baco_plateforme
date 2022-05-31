class AddColumnToTournois < ActiveRecord::Migration[6.1]
  def change
    add_column :tournois, :date_debut_tournoi, :date
    add_column :tournois, :date_fin_tournoi, :date
  end
end
