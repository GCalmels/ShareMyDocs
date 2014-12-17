class Document < ActiveRecord::Base
	belongs_to :user
	belongs_to :matiere

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
	validates :description, presence: true
	validates :url, presence: true
	validates :matiere, presence: true
	validates :user, presence: true

	def self.save(upload)
    	self.nom =  upload['document'].original_filename
    	directory = "public/uploads"
    	# create the file path
    	self.url = File.join(directory, nom)
    	# write the file
    	File.open(path, "wb") { |f| f.write(upload['document'].read) }
  	end
end
