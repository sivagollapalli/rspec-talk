require 'spec_helper'
require 'cancan/matchers'

shared_examples "can_access_show" do
  it "user can access show action" do
    ability.should be_able_to(:show, Student.new)
  end
end

shared_context "can_access" do
  include_examples "can_access_show"
end

describe StudentsController do
  context "#load_and_authorize_resource" do
    let!(:ability){ Ability.new(create(:admin)) }
    subject { ability }

    it { should be_able_to(:manage, Student.new)}
  end

  context "student" do
    let!(:ability){ Ability.new(create(:student)) }

    include_context "can_access"
  end

  context "admin" do
    let!(:ability){ Ability.new(create(:admin)) }

    include_context "can_access"
  end
end
