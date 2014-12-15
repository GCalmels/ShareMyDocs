class AddAttributesToSemestres < ActiveRecord::Migration
  def change
  	add_column :semestres, :numero, :integer
  end
end
