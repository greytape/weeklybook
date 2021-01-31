class CreateDecisions < ActiveRecord::Migration[6.0]
  def change
    create_table :decisions do |t|
      t.belongs_to :group, foreign_key: { on_delete: :cascade }
      t.string :status

      t.timestamps
    end
  end
end
