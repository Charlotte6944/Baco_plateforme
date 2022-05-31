class RemoveDateTournoiFromTournoi < ActiveRecord::Migration[6.1]
  def change
    remove_column :tournois, :date_tournoi, :date
  end
end
