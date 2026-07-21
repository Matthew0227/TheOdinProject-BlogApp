class AddAuthorToBlogs < ActiveRecord::Migration[8.1]
  def change
    add_column :blogs, :author, :string
  end
end
