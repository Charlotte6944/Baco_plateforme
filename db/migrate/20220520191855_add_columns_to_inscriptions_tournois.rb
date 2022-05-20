class AddColumnsToInscriptionsTournois < ActiveRecord::Migration[6.1]
  def change
    add_column :inscriptions_tournois, :nombre_tableau, :integer
    add_column :inscriptions_tournois, :tarif, :integer
    add_column :inscriptions_tournois, :simple, :boolean
    add_column :inscriptions_tournois, :double, :boolean
    add_column :inscriptions_tournois, :mixte, :boolean
  end
end
