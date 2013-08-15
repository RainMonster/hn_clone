get '/' do
  # Look in app/views/index.erb
  # erb :index
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :posts
end

post '/posts' do
  Post.create(params[:post])
  redirect '/posts'
end

get '/posts/:post_id' do

end

delete '/posts/:post_id' do

end
