class AddAttributesToLv2s < ActiveRecord::Migration
  def change
  	add_column :lv2s, :nom, :string
  	add_column :lv2s, :niveau, :string
  end
end
