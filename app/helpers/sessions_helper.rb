helpers do
  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
 #check this out for best practices:
 # http://apidock.com/rails/AbstractController/Helpers/ClassMethods/helper_method
end
