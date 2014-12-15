class AddAttributesToMatieres < ActiveRecord::Migration
  def change
  	add_column :matieres, :nom, :string
  end
end
