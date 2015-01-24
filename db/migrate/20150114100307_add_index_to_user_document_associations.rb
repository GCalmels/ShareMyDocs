class AddIndexToUserDocumentAssociations < ActiveRecord::Migration
	def change
		add_index :user_document_associations, :user_id
		add_index :user_document_associations, :document_id
		add_index :user_document_associations, [:user_id, :document_id], unique: true
	end
end
