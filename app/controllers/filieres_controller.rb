class FilieresController < AdministrationController

	def index
		@filieres = Filiere.all
	end

	def new
		@filiere = Filiere.new
	end

	def create
		@filiere = Filiere.new(filiere_params)
		if @filiere.save
			flash[:success] = "Filiere created with success."
			redirect_to @filiere
		else
			render 'new'
		end
	end

	def show
		@filiere = Filiere.find(params[:id])
	end

	def edit
		@filiere = Filiere.find(params[:id])
	end

	def update
		@filiere = Filiere.find(params[:id])
		if @filiere.update_attributes(filiere_params)
			flash[:success] = "Filiere updated"
			redirect_to @filiere
		else
			render 'edit'
		end
	end

	def destroy
		filiere = Filiere.find(params[:id])
		filiere.destroy
		flash[:success] = "Filiere deleted."
		redirect_to filieres_url
	end

	private

	def filiere_params
		params.require(:filiere).permit(:nom)
	end
end
