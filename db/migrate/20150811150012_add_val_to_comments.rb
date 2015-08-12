class AddValToComments < ActiveRecord::Migration
  def change
    add_column :comments, :le_blog_id, :integer
  end
end
