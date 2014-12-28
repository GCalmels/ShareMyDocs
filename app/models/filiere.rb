class Filiere < ActiveRecord::Base
	has_many :blocs, dependent: :destroy
	has_many :semestres

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
end
