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
  @post = Post.find_by_id(params[:post_id])
  erb :post_show
end

delete '/posts/:post_id' do

end
