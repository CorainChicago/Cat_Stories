get '/' do 
  redirect '/home'
end

get '/home' do
  erb :index
end

get '/users/new' do
  erb :join_form
end

post '/users' do 
  User.create(params[user])
  redirect '/home'
end
