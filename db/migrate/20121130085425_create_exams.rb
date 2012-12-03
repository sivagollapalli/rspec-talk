class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :maths
      t.integer :physics
      t.integer :chemistry
      t.integer :total

      t.timestamps
    end
  end
end
