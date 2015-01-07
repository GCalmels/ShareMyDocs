class AddAttributesToDocumentType < ActiveRecord::Migration
  def change
  	add_column :document_types, :nom, :string
  end
end
