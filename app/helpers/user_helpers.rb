helpers do
  
  def current_user
    User.find_by_id(session[:user_id])
  end

  def login!(user)
    session[:user_id] = user.id
  end

  def logout!
    session.clear
  end

  def logged_in?
    current_user ? true : false
  end

end
