class Bloc < ActiveRecord::Base
	has_many :matieres, dependent: :destroy
	belongs_to :semestre

	validates :nom, presence: true
	validates :semestre, presence: true
end
