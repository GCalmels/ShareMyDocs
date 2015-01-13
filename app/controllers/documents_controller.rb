class DocumentsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@filieres = Filiere.all
		@selected_filiere = Filiere.where(id: params[:filiere]).first
		@selected_filiere = @filieres.first unless @selected_filiere != nil		
		@blocs = @selected_filiere.blocs
		@document_types = DocumentType.all
	end

	def update_documents
		# update documents based on inputs
		@selected_matiere = Matiere.where(id: params[:matiere_id]).first
		if @selected_matiere == nil
			selected_filiere = Filiere.find(params[:filiere_id])
			@blocs = selected_filiere.blocs
		end
	end

	def new
		@document = Document.new
		@filieres = Filiere.all
		@document_types = DocumentType.all
		@blocs = @filieres.first.blocs
	end

	def update_blocs
		# updates matieres based on filiere selected
		filiere = Filiere.find(params[:filiere_id])
		# map to name and id for use in our options_for_select
		@blocs = filiere.blocs
	end

	def create
		@document = Document.new(document_params)
		@document.user = current_user
		@document.nb_downloads = 0
		if @document.save			
			flash[:success] = "The Document has been correctly uploaded"
			redirect_to documents_path
		else
			@filieres = Filiere.all
			@blocs = @filieres.first.blocs
			@document_types = DocumentType.all
			render 'new'
		end		
	end

	private

	def document_params
		params.require(:document).permit(:description, :matiere_id, :file, :document_type_id)
	end
end
