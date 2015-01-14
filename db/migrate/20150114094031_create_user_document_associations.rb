class CreateUserDocumentAssociations < ActiveRecord::Migration
	def change
		create_table :user_document_associations do |t|
			t.belongs_to :user
			t.belongs_to :document

			t.timestamps
		end
	end
end
