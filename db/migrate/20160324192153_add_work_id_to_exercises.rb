class AddWorkIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :work_id, :integer
  end
end
