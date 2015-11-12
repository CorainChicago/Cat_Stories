get '/cats/new' do 
  erb :'/cat/new'
end

post '/cats' do 
  @cat = Cat.new(params[:cat])
  if @cat.valid?
      @cat.save
      redirect '/home'
  end
  redirect '/home'
end

get '/cats/:id' do
  @cat = Cat.find(params[:id])
  # @stories = Story.find(@cat.id)
  erb :'/cat/post'
end

get '/cats/:id/stories/new'do 
  erb :'/story/new'
end
