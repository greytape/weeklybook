class AddBookToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference(:events, :book, foreign_key: { on_delete: :cascade })
  end
end
