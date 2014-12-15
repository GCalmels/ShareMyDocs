class BlocParcours < ActiveRecord::Base
	belongs_to :bloc
	belongs_to :parcours
end
