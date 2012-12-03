require 'spec_helper'

describe Exam do
   it { should callback(:calculate_total).after(:validation) }

   it "should calculate total after exam has saved" do
     exam = create(:exam)
     expected_total = exam.maths + exam.physics + exam.chemistry
     exam.reload.total.should eq(expected_total)
   end
end
