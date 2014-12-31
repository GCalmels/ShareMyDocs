class DocumentsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@filiere = Filiere.where(id: params[:filiere])
		@filiere = current_user.filiere unless @filiere != []
		@blocs = Bloc.where(filiere: @filiere)
		@bloc_parcours_associations = BlocParcoursAssociation.where(parcours: current_user.parcours)
	end

	def new
		@document = Document.new
		current_filiere = current_user.filiere
		@filieres = select_previous_filieres(current_filiere)
		@blocs = Bloc.where(filiere: current_filiere)
		@bloc_parcours_associations = BlocParcoursAssociation.where(parcours: current_user.parcours)
	end

	def update_blocs
		 # updates matieres based on filiere selected
		filiere = Filiere.find(params[:filiere_id])
		# map to name and id for use in our options_for_select
		@blocs = Bloc.where(filiere: filiere)
		@bloc_parcours_associations = BlocParcoursAssociation.where(parcours: current_user.parcours)
	end

	def create
		@document = Document.new(document_params)
		@document.user = current_user
		@document.nb_downloads = 0
		if @document.save			
			flash[:success] = "The Document has been correctly uploaded"
			redirect_to documents_path
		else
			current_filiere = current_user.filiere
			@filieres = select_previous_filieres(current_filiere)
			@blocs = Bloc.where(filiere: current_filiere)
			@bloc_parcours_associations = BlocParcoursAssociation.where(parcours: current_user.parcours)
			render 'new'
		end		
	end

	private

	def document_params
		params.require(:document).permit(:description, :matiere_id, :file)
	end

	def select_previous_filieres(current_user_filiere)
		t = Filiere.arel_table
		if current_user_filiere == nil
			return Filiere.all
		end
		if (current_user_filiere.nom == "CITISE1")
			return current_user_filiere
		elsif (current_user_filiere.nom == "CITISE2")
			return Filiere.where(t[:nom].eq("CITISE2").
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FI1")
			return Filiere.where(t[:nom].eq("FI1").
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FI2")
			return Filiere.where(t[:nom].eq("FI2").
								or(t[:nom].eq("FI1")).
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FI3")
			return Filiere.where(t[:nom].eq("FI3").
								or(t[:nom].eq("FI2")).
								or(t[:nom].eq("FI1")).
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FA1")
			return Filiere.where(t[:nom].eq("FA1").
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FA2")
			return Filiere.where(t[:nom].eq("FA2").
								or(t[:nom].eq("FA1")).
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		elsif (current_user_filiere.nom == "FA3")
			return Filiere.where(t[:nom].eq("FA3").
								or(t[:nom].eq("FA2")).
								or(t[:nom].eq("FA1")).
								or(t[:nom].eq("CITISE2")).
								or(t[:nom].eq("CITISE1"))).order(id: :desc)
		else
			return Filiere.all
		end				
	end
end
