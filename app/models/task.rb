class Task < ApplicationRecord
	#has_many :task_tags
	#has_many :tags, :through => :task_tags
		belongs_to :user
		has_and_belongs_to_many :tags

		def all_tags=(names)
			self.tags = names.split(",").map do |name|
				Tag.where(name: name.strip).first_or_create!
			end
		end

		def all_tags
			self.tags.map(&:name).join(", ")
		end
end
