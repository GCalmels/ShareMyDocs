class CreateParcours < ActiveRecord::Migration
  def change
    create_table :parcours do |t|

      t.timestamps
    end
  end
end
