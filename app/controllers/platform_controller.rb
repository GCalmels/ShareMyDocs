class PlatformController < ApplicationController
	before_filter :authenticate_user!

	def home
		@citise1 = Filiere.find_by(nom: "CITISE1").id
		@citise2 = Filiere.find_by(nom: "CITISE2").id
		@fi1 = Filiere.find_by(nom: "FI1").id
		@fi2 = Filiere.find_by(nom: "FI2").id
		@fi3 = Filiere.find_by(nom: "FI3").id
		@fa1 = Filiere.find_by(nom: "FA1").id
		@fa2 = Filiere.find_by(nom: "FA2").id
		@fa3 = Filiere.find_by(nom: "FA3").id
	end
end
