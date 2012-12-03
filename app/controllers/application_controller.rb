class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, you don't have access"
    redirect_to request.env["HTTP_REFERER"], :alert => exception.message
  end

  def after_sign_in_path_for(user)
    if user.is_admin? 
      students_path
    else
      student_path(user) 
    end
  end
end
