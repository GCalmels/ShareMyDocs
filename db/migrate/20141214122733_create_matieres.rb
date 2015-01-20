class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
    	t.belongs_to :bloc

      t.timestamps
    end
  end
end
