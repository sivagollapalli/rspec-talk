require 'spec_helper'

describe Student, :model => "test" do
  specify { should validate_presence_of(:first_name) }
  it { should validate_uniqueness_of(:email) }

  it { should have_many(:exams)} 
end
