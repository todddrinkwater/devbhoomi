class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :time
      t.text :details

      t.timestamps
    end
  end
end
