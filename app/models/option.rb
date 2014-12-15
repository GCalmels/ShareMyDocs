class Option < ActiveRecord::Base
	has_many :matieres, dependent: :destroy
	belongs_to :semestre

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
	validates :semestre
end
