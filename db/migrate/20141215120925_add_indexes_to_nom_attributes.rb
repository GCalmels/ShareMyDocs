class AddIndexesToNomAttributes < ActiveRecord::Migration
  def change
  	add_index :documents, :nom,                unique: true
  	add_index :matieres, :nom,                unique: true
  	add_index :blocs, :nom,                unique: true
  	add_index :parcours, :nom,                unique: true
  	add_index :parcours, :numero,                unique: true
  	add_index :filieres, :nom,                unique: true
  	add_index :options, :nom,                unique: true
  end
end
