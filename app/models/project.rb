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
	def calculate_hours month year
		all_entries = self.entries
		all_selected_entries = all_entries.select do |entry|
			entry.date.month == month && entry.date.year == year
		end
		all_selected_entries.reduce(0){|sum, entry| sum + entry.calculate_hours}
	end
	def calculate_minute month year
		all_entries = self.entries
		all_selected_entries = all_entries.select do |entry|
			entry.date.month == month && entry.date.year == year
		end
		all_selected_entries.reduce(0){|sum, entry| sum + entry.calculate_minute}
	end
end
