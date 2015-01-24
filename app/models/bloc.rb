class Bloc < ActiveRecord::Base
	has_many :matieres, dependent: :destroy
	belongs_to :semestre

	validates :nom, presence: true, uniqueness: { scope: :semestre, case_sensitive: false }
	validates :semestre, presence: true
end
