require 'spec_helper'

describe StudentsController do
  context "#index" do
    before(:each) { create(:student) }

    it "should fetch all student objects" do
      get :index
      assigns[:students].count.should eq(1)
    end
  end
end
