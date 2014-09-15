class Team < ActiveRecord::Base

	has_many: scarves
	has_many: users
	has_many: :photos, as: :imageable
	
end
