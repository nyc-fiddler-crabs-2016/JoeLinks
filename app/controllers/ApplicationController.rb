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
    # need error handling here to tell user why login failed
    erb :'/users/login'
  end
end

#try to make this a delete request
get '/logout' do
  # session.clear is best here
  session.delete(:user_id)
  redirect '/'
end

