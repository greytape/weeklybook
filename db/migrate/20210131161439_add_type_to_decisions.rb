class AddTypeToDecisions < ActiveRecord::Migration[6.0]
  def change
    add_column :decisions, :type, :string
  end
end
