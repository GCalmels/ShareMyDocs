class CreateSemestres < ActiveRecord::Migration
  def change
    create_table :semestres do |t|

      t.timestamps
    end
  end
end
