class Matiere < ActiveRecord::Base
	belongs_to :bloc
	belongs_to :option
	belongs_to :lv2
	has_many :documents

	validates :nom, presence: true
	validates :bloc, presence: true
end
