class DocumentsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@documents = Document.all
	end

	def new
		@document = Document.new
	end

	def create
		@document = Document.new(document_params)
		@document.user = current_user
		post = DataFile.save(params[:file])
		if @document.save			
			flash[:success] = "The Document has been correctly uploaded"
			redirect_to 'index'
		else
			render 'new'
		end		
	end

	private

	def document_params
		params.require(:document).permit(:description, :matiere)
	end
end
