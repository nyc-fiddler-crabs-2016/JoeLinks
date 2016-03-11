get '/' do
  redirect '/posts'
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  user = User.find_by(username: params[:username])
  if  user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'/users/login'
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

