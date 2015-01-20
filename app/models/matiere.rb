class Matiere < ActiveRecord::Base
	belongs_to :bloc
	has_many :documents

	validates :nom, presence: true
	validates :bloc, presence: true
end
