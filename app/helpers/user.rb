def loggin?
  return true if session[:id] != nil
end

def user_find
  @user = User.find(session[:id])  
end