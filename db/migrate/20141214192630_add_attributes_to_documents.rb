class AddAttributesToDocuments < ActiveRecord::Migration
  def change
  	add_column :documents, :description, :text
  end
end
