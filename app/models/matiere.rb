class Matiere < ActiveRecord::Base
	belongs_to :bloc
	has_many :documents, dependent: :destroy

	validates :nom, presence: true, uniqueness: { scope: :bloc, case_sensitive: false }
	validates :bloc, presence: true
end
