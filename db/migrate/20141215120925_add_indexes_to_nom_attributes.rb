class AddIndexesToNomAttributes < ActiveRecord::Migration
  def change
  	add_index :filieres, :nom,                unique: true
  end
end
