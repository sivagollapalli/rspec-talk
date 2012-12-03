require 'spec_helper'

describe ExamsController do
  context "#index" do
    it "should redirect to sign_in page without login" do
      student = create(:student)

      get :index, student_id: student.id
      assert_redirected_to new_user_session_path
    end
  end

  context "#index" do
    before(:each)  do
      @student = create(:student)
      sign_in @student
    end

    it "there should be find_student as a before_filter for index action" do
      filters = subject._process_action_callbacks.select{|f| f.kind == :before && f.filter == :find_student}
      expect(filters.first.options[:only]).to eq([:index])
    end

    it "should find student before list of exams" do
      get :index, student_id: @student.id
      expect(assigns[:student]).not_to eq(nil)
    end

    it "should list exams of student" do
      create(:exam, student: @student)
      get :index, student_id: @student.id
      expect(assigns[:exams].count).to eq(1)
    end
  end
end
