get '/login' do
  erb :login
end

post '/login' do
  user = User.authenticate(params[:username], params[:password])
  if user
    login!(user)
    redirect to '/'
  else
    redirect to '/login'
  end
end

get '/logout' do
  logout!
  redirect to '/'
end
