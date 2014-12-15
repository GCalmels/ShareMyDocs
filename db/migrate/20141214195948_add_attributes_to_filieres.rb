class AddAttributesToFilieres < ActiveRecord::Migration
  def change
  	add_column :filieres, :nom, :string
  end
end
