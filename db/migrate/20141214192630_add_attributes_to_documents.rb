class AddAttributesToDocuments < ActiveRecord::Migration
  def change
  	add_column :documents, :nom, :string
  	add_column :documents, :description, :text
  	add_column :documents, :url, :string
  	add_column :documents, :nb_downloads, :integer
  end
end
