module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    if session[:user_id] == nil
      @current_user = nil
    else
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    if current_user == nil
      redirect_to "/login"
    end
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to root_path
  end

end

