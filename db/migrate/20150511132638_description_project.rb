class DescriptionProject < ActiveRecord::Migration
  def change
#Create a new columnd of table projects
  	add_column :projects, :description, :string
  end
end
