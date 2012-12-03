require 'spec_helper'

describe Exam, :model => true do
   it { should callback(:calculate_total).after(:validation) }

   it "should calculate total after exam has saved" do
     exam = create(:exam)
     expected_total = exam.maths + exam.physics + exam.chemistry
     exam.reload.total.should eq(expected_total)
   end

   it "should calculate total after exam has saved" do
     exam = create(:exam)
     expected_total = exam.maths + exam.physics + exam.chemistry

     assert exam.reload.total == expected_total, "actual total should equal to expected total"
   end

   its(:class) { should eq(Exam)}

   context "#top_performances" do
     it "should collect exams whose total is greater than 240" do
       exams = create_list(:exam, 3, maths: 90, physics: 80, chemistry:85)

       expect(Exam.top_performances.count).to eq(3)
     end
   end
end
