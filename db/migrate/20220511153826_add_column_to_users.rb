class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :role, :string, default: "joueur"
    add_column :users, :adult?, :boolean
    add_column :users, :encadre?, :boolean
    add_column :users, :num_licence, :integer
  end
end
