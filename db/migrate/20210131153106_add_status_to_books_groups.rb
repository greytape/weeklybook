class AddStatusToBooksGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :books_groups, :status, :string
  end
end
