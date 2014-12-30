class Document < ActiveRecord::Base
	belongs_to :user
	belongs_to :matiere

	validates :matiere, presence: true
	validates :user, presence: true
	validates :description, presence: true

	has_attached_file :file
			#:url => "/system/:class/:attachment/:id/:style/:basename.:extension"

	validates_attachment :file, presence: true,
					:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "application/pdf", "application/force-download"] }
					#:size => { :in => 0..10.kilobytes }
end
