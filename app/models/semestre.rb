class Semestre < ActiveRecord::Base
	has_many :blocs, dependent: :destroy
	belongs_to :filiere

	validates :nom, presence: true, uniqueness: { scope: :filiere, case_sensitive: false }
	validates :filiere, presence: true
end
