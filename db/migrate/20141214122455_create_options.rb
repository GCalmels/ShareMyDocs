class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.belongs_to :semestre

      t.timestamps
    end
  end
end
