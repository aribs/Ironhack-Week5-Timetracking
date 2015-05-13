class Project < ActiveRecord::Base
	has_many :entries
	def self.iron_find param
		
		where(id: param).first
	end
	def self.clean_old
		 elements = Project.where("created_at < ?", Time.now - 1.week)
		 elements.destroy_all
	end
	def is_null_description?
		 self.description.present?
	end
	def self.get_last_created n
	  Project.order(created_at: :desc).limit(n)
	end
end
