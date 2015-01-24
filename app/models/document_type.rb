class DocumentType < ActiveRecord::Base
	validates :nom, presence: true
end
