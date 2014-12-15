class AddAttributesToBlocs < ActiveRecord::Migration
  def change
  	add_column :blocs, :nom, :string
  end
end
