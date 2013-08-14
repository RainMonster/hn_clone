get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/posts' do
  erb :posts
  #form for submitting posts
end

post '/posts' do
  erb :posts
end

get '/posts/:post_id' do

end

delete '/posts/:post_id' do

end
