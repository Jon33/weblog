class Post < ActiveRecord::Base
	has_many :commets, dependent: :destroy
end
