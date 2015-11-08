  
get '/users/new' do
  if request.xhr?
    erb :'user/_join', layout: false
  else
    erb :'user/_join'
  end
end

post '/users' do 
  @user = User.create(params[:user])
  if @user.valid?
   session[:id] = @user.id
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

post '/users/login' do
  @user = User.authenticate(params[:user])
  if @user
    session[:id] = @user.id
  else
    redirect '/user/_join'
  end
end

get '/users/logout' do
  p session
  session[:id] = nil
  redirect '/home'
end

get '/users/all' do 
  p @all
  erb :profile
end
