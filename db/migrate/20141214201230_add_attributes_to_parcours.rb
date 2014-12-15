class AddAttributesToParcours < ActiveRecord::Migration
  def change
  	add_column :parcours, :nom, :string
  	add_column :parcours, :numero, :integer
  end
end
