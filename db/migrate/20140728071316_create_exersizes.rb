class CreateExersizes < ActiveRecord::Migration
  def change
    create_table :exersizes do |t|
      t.string :exercise_performed
      t.integer :load_perscribed
      t.integer :reps_perscribed
      t.integer :sets_perscribed
      t.integer :actual_weight_lifted_1
      t.integer :actual_weight_lifted_2
      t.integer :actual_weight_lifted_3
      t.references :workout, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
