class CreateSemestres < ActiveRecord::Migration
  def change
    create_table :semestres do |t|
    	t.belongs_to :filiere

      t.timestamps
    end
  end
end
