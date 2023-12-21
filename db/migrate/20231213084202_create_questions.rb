class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content_question
      t.integer :user_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
