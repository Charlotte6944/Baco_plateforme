class AddColumnsToTournois < ActiveRecord::Migration[6.1]
  def change
    add_column :tournois, :date_simple, :date
    add_column :tournois, :date_double, :date
    add_column :tournois, :date_mixte, :date
    add_column :tournois, :tarif_1, :integer
    add_column :tournois, :tarif_2, :integer
    add_column :tournois, :tarif_3, :integer
    add_column :tournois, :url_tournoi, :string
  end
end
