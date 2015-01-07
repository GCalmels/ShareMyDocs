class DocumentsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@selected_filiere = Filiere.where(id: params[:filiere]).first
		@selected_filiere = current_user.filiere unless @selected_filiere != nil
		@filieres = select_previous_filieres(current_user.filiere)
		@blocs = @selected_filiere.blocs.where('id NOT IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations) 
											OR id IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations 
												WHERE parcours_id = ?)', "#{current_user.parcours.id}")
		@document_types = DocumentType.all
	end

	def update_documents
		# updates documents based on search input if any
		search_input = params[:search_input]		
		@selected_matiere = Matiere.where(id: params[:matiere_id]).first
		if @selected_matiere == nil
			selected_filiere = Filiere.find(params[:filiere_id])
			@blocs = selected_filiere.blocs.where('id NOT IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations) 
											OR id IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations 
												WHERE parcours_id = ?)', "#{current_user.parcours.id}")
		end
	end

	def new
		@document = Document.new
		current_filiere = current_user.filiere
		@filieres = select_previous_filieres(current_filiere)
		@blocs = current_filiere.blocs.where('id NOT IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations) 
											OR id IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations 
												WHERE parcours_id = ?)', "#{current_user.parcours.id}")
		@document_types = DocumentType.all
	end

	def update_blocs
		# updates matieres based on filiere selected
		filiere = Filiere.find(params[:filiere_id])
		# map to name and id for use in our options_for_select
		@blocs = filiere.blocs.where('id NOT IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations) 
											OR id IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations 
												WHERE parcours_id = ?)', "#{current_user.parcours.id}")
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
			@blocs = current_filiere.blocs.where('id NOT IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations) 
											OR id IN (SELECT DISTINCT(bloc_id) FROM bloc_parcours_associations 
												WHERE parcours_id = ?)', "#{current_user.parcours.id}")
			@document_types = DocumentType.all
			render 'new'
		end		
	end

	private

	def document_params
		params.require(:document).permit(:description, :matiere_id, :file, :document_type_id)
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
