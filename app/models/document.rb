class Document < ActiveRecord::Base
	belongs_to :user
	belongs_to :matiere

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
	validates :description, presence: true
	validates :url, presence: true
	validates :matiere, presence: true
	validates :user, presence: true
end
