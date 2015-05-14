class ProjectsController < ApplicationController
	def index 
		@projects = Project.get_last_created 23
	end
	def show
		    begin #Comienza la sentencia de la excepción
        @project = Project.find params[:id]
        rescue ActiveRecord::RecordNotFound #Si no encuentra el id, rescata la excepción
            render 'no_projects_found', layout: 'admin' #y ejecuta lo que queramos debajo de "rescue"
        end
	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.new project_params #llamamos al método privado
		 @project.save
			render 'show' 
	end
	private
	def project_params #Método privado que devuelve los parámetros que utilizaremos en el método create
		params.require(:project). permit(:name, :description)
	end
	
end
