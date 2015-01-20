class Semestre < ActiveRecord::Base
	has_many :blocs, dependent: :destroy
	belongs_to :filiere

	validates :nom, presence: true
	validates :filiere, presence: true
end
