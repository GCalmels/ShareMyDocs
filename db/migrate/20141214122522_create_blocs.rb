class CreateBlocs < ActiveRecord::Migration
  def change
    create_table :blocs do |t|
    	t.belongs_to :semestre
    	t.belongs_to :filiere

      t.timestamps
    end
  end
end
