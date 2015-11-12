get '/' do 
  redirect '/home'
end

get '/home' do
  @pic = Cat.all
  erb :index
end

