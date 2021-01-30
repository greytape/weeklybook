class AddRoleToGroupsUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :groups_users, :role, :string
  end
end
