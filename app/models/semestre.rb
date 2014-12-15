class Semestre < ActiveRecord::Base
	has_many :blocs, dependent: :destroy
	has_many :options, dependent: :destroy

	validates :nom, presence: true, uniqueness: { case_sensitive: false }
end
