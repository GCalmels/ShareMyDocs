class Document < ActiveRecord::Base
	belongs_to :user
	belongs_to :matiere
	belongs_to :document_type

	has_many :users, through: :user_document_associations
	has_many :user_document_associations, dependent: :destroy

	validates :matiere, presence: true
	validates :user, presence: true
	validates :description, presence: true
	validates :document_type, presence: true

	has_attached_file :file
			#:url => "/system/:class/:attachment/:id/:style/:basename.:extension"

	validates_attachment :file, presence: true,
					:content_type => { :content_type => ["image/jpeg", "image/png", "application/pdf", "application/force-download", "application/zip"] },
					:size => { :in => 0..20.megabytes }

	def corresponds_to_user_input(search_input)
		if search_input == nil || search_input.blank?
			true
		else
			search_input.downcase!
			search_array = search_input.split
			test_string = self.file_file_name.downcase + " " +
						self.description.downcase + " " +
						self.document_type.nom.downcase + " " +
						self.user.login.downcase + " " +
						self.matiere.nom.downcase + " " +
						self.matiere.bloc.nom.downcase + " " +
						self.matiere.bloc.filiere.nom.downcase
			result = search_array.map{ |o| test_string =~ /\b#{Regexp.escape(o)}\b/ }

			!result.include?(nil)
		end
	end
end
