class Filiere < ActiveRecord::Base
	has_many :semestres, dependent: :destroy

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
end
