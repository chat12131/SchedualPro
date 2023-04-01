class CreateScheduals < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduals do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.boolean :full_day
      t.text :memo

      t.timestamps
    end
  end
end
