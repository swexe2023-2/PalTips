class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.string :school_grade

      t.timestamps
    end
  end
end
