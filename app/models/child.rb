class Child < ApplicationRecord
	has_many :chores
	has_many :tasks, through: :chores
	validates_presence_of :first_name, blank: :false
	validates_presence_of :last_name, blank: :false
    
    def name
		return first_name + " " + last_name
	end

	scope :alphabetical, -> {order('last_name', 'first_name')}
    scope :active, -> { where(active: true) }
end
