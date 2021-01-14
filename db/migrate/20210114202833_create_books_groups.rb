class CreateBooksGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :books_groups do |t|
      t.references :book, foreign_key: { on_delete: :cascade }, null: false
      t.references :group, foreign_key: { on_delete: :cascade }, null: false
    end
  end
end
