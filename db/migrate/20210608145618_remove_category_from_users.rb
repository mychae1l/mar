class RemoveCategoryFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :user, :category
  end
end
