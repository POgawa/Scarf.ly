class Scarf < ActiveRecord::Base
	belongs_to :user
	
	belongs_to :team
	has_many :photos, as: :imageable
end
