get '/users/new' do
  erb :join_form
end

post '/users' do 
  p params[:user]
  @user = User.create(params[:user])
  p @user
  if @user.valid?
   session[:user_id] = @user.id
   redirect "/"
  else @registration_error = true
   erb :'users/signup'
  end
end

get '/users/all' do 
  @all = User.all
  erb :profile
end
get '/users' do
  "new user submission form"
end


get '/users/logout' do
  session[:user_id] = nil
  redirect '/home'
end
