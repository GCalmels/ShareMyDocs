class Filiere < ActiveRecord::Base
	has_many :blocs, dependent: :destroy

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
end
