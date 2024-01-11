class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.integer :grade_id

      t.timestamps
    end
  end
end
