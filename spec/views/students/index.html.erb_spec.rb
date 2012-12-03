require 'spec_helper'

describe "students/index" do
  it "should displays all students" do
    assign(:students, [create(:student)])
    render

    expect(rendered).to include("siva@joshsoftware.com")
  end
end
