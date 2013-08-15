get '/users/new' do
  erb :user_new
end

post '/users' do
  if params[:password_confirmation] == params[:user][:password]
    @user = User.create(params[:user])
    redirect to '/posts'
  else
    redirect to '/users/new'
  end
end

get '/users/:user_id' do
  @user = User.find_by_id(params[:user_id])
  @posts = Post.where(user_id: @user.id)
  @comments = Comment.where(user_id: @user.id)
  erb :user_posts
end


