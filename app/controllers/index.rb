get '/' do 
  redirect '/home'
end

get '/home' do
  erb :index
end

get '/posts' do
  erb :post
end
