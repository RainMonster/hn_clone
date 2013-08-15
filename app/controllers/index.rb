
get '/' do
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :posts
end

# protected
post '/posts' do
  redirect_if_logged_out!
  post = Post.create(params[:post])
  post.user = current_user
  post.save
  redirect '/posts'
end

get '/posts/:post_id' do
  @post = Post.find_by_id(params[:post_id])
  erb :post_show
end

# protected
delete '/posts/:post_id' do
  redirect_if_logged_out!

  post = Post.find_by_id(params[:post_id])
  if post.user == current_user
    post.destroy
  end
  redirect to '/posts'
end

# protected
post '/posts/:post_id/comments' do
  redirect_if_logged_out!
  post = Post.find_by_id(params[:post_id])
  comment = Comment.create(params[:comment])
  comment.user = current_user
  comment.save
  post.comments << comment
  redirect to "/posts/#{post.id}"
end
