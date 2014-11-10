class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.string :name
    end
  end
end
