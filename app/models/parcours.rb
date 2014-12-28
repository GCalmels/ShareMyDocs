class Parcours < ActiveRecord::Base
	has_many :bloc_parcours_associations
	has_many :blocs, through: :bloc_parcours_associations

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
	validates :numero, presence: true, uniqueness: { case_sensitive: false }
end
