class AddAttachmentToDocuments < ActiveRecord::Migration
  def change
  	add_attachment :documents, :file
  end
end
