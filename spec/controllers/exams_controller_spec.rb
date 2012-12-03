require 'spec_helper'

describe ExamsController do

  it "before_filter should define for index method" do
   p  subject._process_action_callbacks.select{|f| f.kind == :before}.map(&:options).select{|h| h[:only].include}
  end
end
