class AddAttributesToOption < ActiveRecord::Migration
  def change
  	add_column :options, :nom, :string
  end
end
