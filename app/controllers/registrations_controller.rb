class RegistrationsController < Devise::RegistrationsController
  def new 
    super
  end

  def create
    @user = Student.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully registered"
      redirect_to new_user_session_path
    else
      render 'new'
    end
  end

  def update
    super
  end
end
