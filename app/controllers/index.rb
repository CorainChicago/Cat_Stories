get '/' do 
  redirect '/home'
end

get '/home' do
  @pic = Cat.all
  @pic.each do |pic|
    p pic.id
    p pic.url
  end
  p @pic
  erb :index
end

