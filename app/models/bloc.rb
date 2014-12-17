class Bloc < ActiveRecord::Base
	has_many :matieres, dependent: :destroy
	belongs_to :filiere
	belongs_to :semestre
	has_many :bloc_parcours
	has_many :parcours, through: :bloc_parcours

	validates :nom, presence: true
	validates :semestre, presence: true
	validates :filiere, presence: true
end
