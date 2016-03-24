class AddIndexWorkIdToExercises < ActiveRecord::Migration
  def change
  	add_index :exercises,:work_id
  end
end
