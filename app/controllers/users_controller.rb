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

end


