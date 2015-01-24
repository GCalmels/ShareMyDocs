class CreateBlocs < ActiveRecord::Migration
  def change
    create_table :blocs do |t|
    	t.belongs_to :semestre

      t.timestamps
    end
  end
end
