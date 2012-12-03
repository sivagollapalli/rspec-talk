class AddStudentIdToExam < ActiveRecord::Migration
  def change
    add_column :exams, :student_id, :integer
  end
end
