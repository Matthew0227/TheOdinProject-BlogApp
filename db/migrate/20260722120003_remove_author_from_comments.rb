class RemoveAuthorFromComments < ActiveRecord::Migration[8.1]
  def change
    remove_column :comments, :author, :string
  end
end
