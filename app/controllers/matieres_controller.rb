class MatieresController < AdministrationController

	def index
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matieres = @bloc.matieres
	end

	def new
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matiere = @bloc.matieres.new
	end

	def create
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matiere = @bloc.matieres.new(matiere_params)
		if @matiere.save
			flash[:success] = "Matiere created with success."
			redirect_to filiere_semestre_bloc_matiere_url(@filiere, @semestre, @bloc, @matiere)
		else
			render 'new'
		end
	end

	def show
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matiere = @bloc.matieres.find(params[:id])
	end

	def edit
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matiere = @bloc.matieres.find(params[:id])
	end

	def update
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:bloc_id])
		@matiere = @bloc.matieres.find(params[:id])
		if @matiere.update_attributes(matiere_params)
			flash[:success] = "Matiere updated."
			redirect_to filiere_semestre_bloc_matiere_url(@filiere, @semestre, @bloc, @matiere)
		else
			render 'edit'
		end
	end

	def destroy
		filiere = Filiere.find(params[:filiere_id])
		semestre = filiere.semestres.find(params[:semestre_id])
		bloc = semestre.blocs.find(params[:bloc_id])
		matiere = bloc.matieres.find(params[:id])
		matiere.destroy
		flash[:success] = "Matiere deleted."
		redirect_to filiere_semestre_bloc_matieres_url(filiere, semestre, bloc)
	end

	private

	def matiere_params
		params.require(:matiere).permit(:nom)
	end
end
