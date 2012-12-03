require 'spec_helper'

describe "Given admin wants to enter exam details of a student" do
  before(:each) do
    admin = create(:admin)
    sign_in admin
  end

  context "when admin logged in and there exists student" do
    let!(:student) { create(:student) }

    it "then admin should be able to create an exam" do 
      post exams_path, :exam => { :maths => 80, :physics => 70, :chemistry => 60, :student_id => student.id}
      expect(student.reload.exams.count).to eq(1)
    end
  end
end
