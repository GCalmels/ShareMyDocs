class CreateFilieres < ActiveRecord::Migration
  def change
    create_table :filieres do |t|

      t.timestamps
    end
  end
end
