require 'spec_helper'

describe ExamsHelper do
  context "#remarks" do
    it "should render 'Excellent' if total is greater than 240" do
      exam = create(:exam, maths: 80, physics: 80, chemistry: 80)

      expect(remarks(exam)).to eq('Excellent')
    end
  end
end
