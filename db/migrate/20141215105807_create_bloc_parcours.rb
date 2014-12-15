class CreateBlocParcours < ActiveRecord::Migration
  def change
    create_table :bloc_parcours do |t|
    	t.belongs_to :bloc
    	t.belongs_to :parcours

      t.timestamps
    end
  end
end
