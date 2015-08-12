class AddUserIdToLeBlogs < ActiveRecord::Migration
  def change
    add_column :le_blogs, :user_id, :integer
  end
end
