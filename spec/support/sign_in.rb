module AuthenticationHelpers
  def sign_in
    post user_session_path, :user => {:email => admin.email, 
                                      :password => 'test123'} 
  end
end
