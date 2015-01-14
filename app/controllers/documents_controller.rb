class DocumentsController < ApplicationController
	before_filter :authenticate_user!
	before_action :correct_user, only: [:destroy, :edit, :update]
	
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

	def check_viewed
		document = Document.find(params[:document])
		if (!current_user.documents_viewed.include?(document))
			user_document_association = UserDocumentAssociation.new(user: current_user, document: document)
			user_document_association.save
		end
		redirect_to document.file.url
	end

	def destroy
		document = Document.find(params[:id])
		document.destroy
		flash[:success] = "The Document has been correctly destroyed"
		redirect_to documents_path
	end

	def edit
		@document = Document.find(params[:id])
		@filieres = Filiere.all
		@document_types = DocumentType.all
		@blocs = @document.matiere.bloc.filiere.blocs
	end

	def update
		@document = Document.find(params[:id])
		@document.assign_attributes(document_params)
		@document.user = current_user
		if @document.save
			flash[:success] = "Document updated"
			redirect_to documents_path
		else
			@filieres = Filiere.all
			@blocs = @document.matiere.bloc.filiere.blocs
			@document_types = DocumentType.all
			render 'edit'
		end
	end

	private

	def document_params
		params.require(:document).permit(:description, :matiere_id, :file, :document_type_id)
	end

	def correct_user
		document = Document.find(params[:id])
		if current_user.admin || current_user == document.user
			true
		else
			raise "You don't have the rights to perform this action!"
		end
	rescue
		redirect_to root_url
	end
end
