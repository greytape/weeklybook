class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime 'date_time', null: false
      t.string 'meeting_url', null: false
      t.string 'name'
      t.references :group, foreign_key: true, null: false

      t.timestamps
    end
  end
end
