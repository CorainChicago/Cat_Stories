get '/users/new' do
  if request.xhr?
    erb :'user/_join', layout: false
  else
    erb :'user/_join'
  end
end

post '/users' do 
  @user = User.create(params[:user])
  @user
  if @user.valid?
   session[:user_id] = @user.id
   redirect "/"
  else @registration_error = true
   erb :'user/_join'
  end
end

get '/users/login' do
  if request.xhr?
    erb :'user/_login', layout: false
  else
    erb :'user/_login'
  end
end

get '/users/logout' do
  session[:user_id] = nil
  redirect '/home'
end

get '/users/all' do 
  @all = User.all
  p @all
  erb :profile
end
