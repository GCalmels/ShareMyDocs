class Semestre < ActiveRecord::Base
	has_many :blocs, dependent: :destroy
	has_many :options, dependent: :destroy

	validates :numero, presence: true
end
