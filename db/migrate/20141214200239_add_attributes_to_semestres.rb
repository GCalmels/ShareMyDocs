class AddAttributesToSemestres < ActiveRecord::Migration
  def change
  	add_column :semestres, :nom, :string
  end
end
