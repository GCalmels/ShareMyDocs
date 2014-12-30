class RemoveNomUrlToDocuments < ActiveRecord::Migration
  def change
  	remove_column :documents, :nom
  	remove_column :documents, :url
  end
end
