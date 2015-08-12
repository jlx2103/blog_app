class CreateLeBlogs < ActiveRecord::Migration
  def change
    create_table :le_blogs do |t|
      t.string :title
      t.string :author
      t.text :blog_entry

      t.timestamps null: false
    end
  end
end
