class BlocsController < AdministrationController

	def index
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@blocs = @semestre.blocs
	end

	def new
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.new
	end

	def create
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc =  @semestre.blocs.new(bloc_params)
		if @bloc.save
			flash[:success] = "Bloc created with success."
			redirect_to filiere_semestre_bloc_url(@filiere, @semestre, @bloc)
		else
			render 'new'
		end
	end

	def show
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:id])
	end

	def edit
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:id])
	end

	def update
		@filiere = Filiere.find(params[:filiere_id])
		@semestre = @filiere.semestres.find(params[:semestre_id])
		@bloc = @semestre.blocs.find(params[:id])
		if @bloc.update_attributes(bloc_params)
			flash[:success] = "Bloc updated."
			redirect_to filiere_semestre_bloc_url(@filiere, @semestre, @bloc)
		else
			render 'edit'
		end
	end

	def destroy
		filiere = Filiere.find(params[:filiere_id])
		semestre = filiere.semestres.find(params[:semestre_id])
		bloc = semestre.blocs.find(params[:id])
		bloc.destroy
		flash[:success] = "Bloc deleted."
		redirect_to filiere_semestre_blocs_url(filiere, semestre)
	end

	private

	def bloc_params
		params.require(:bloc).permit(:nom)
	end
end
