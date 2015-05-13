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
	
end
