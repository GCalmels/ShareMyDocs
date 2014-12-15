class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
    	t.belongs_to :bloc
    	t.belongs_to :option
    	t.belongs_to :lv2

      t.timestamps
    end
  end
end
