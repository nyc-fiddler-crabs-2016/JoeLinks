get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :'/users/user_show'
end

get '/users/new' do
  erb :'users/users_new'
end
