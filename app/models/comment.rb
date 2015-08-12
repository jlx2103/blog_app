class Comment < ActiveRecord::Base
	belongs_to :le_blog
	belongs_to :user
end
