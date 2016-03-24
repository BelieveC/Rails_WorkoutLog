class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :mood
      t.string :length
      t.datetime :date
      t.string :workout

      t.timestamps null: false
    end
  end
end
