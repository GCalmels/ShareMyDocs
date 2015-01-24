class SemestresController < AdministrationController

	def index
		@filiere = Filiere.find(params[:filiere_id])
		@semestres = @filiere.semestres
	end

	def new
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.new
	end

	def create
		@filiere = Filiere.find(params[:filiere_id])
		@semestre =  @filiere.semestres.new(semestre_params)
		if @semestre.save
			flash[:success] = "Semestre created with success."
			redirect_to filiere_semestre_url(@filiere, @semestre)
		else
			render 'new'
		end
	end

	def show
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:id])
	end

	def edit
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:id])
	end

	def update
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:id])
		if @semestre.update_attributes(semestre_params)
			flash[:success] = "Semestre updated."
			redirect_to filiere_semestre_url(@filiere, @semestre)
		else
			render 'edit'
		end
	end

	def destroy
		filiere = Filiere.find(params[:filiere_id])
		semestre = filiere.semestres.find(params[:id])
		semestre.destroy
		flash[:success] = "Semestre deleted."
		redirect_to filiere_semestres_url(filiere)
	end

	private

	def semestre_params
		params.require(:semestre).permit(:nom)
	end
end
