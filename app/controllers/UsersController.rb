get '/users/new' do
  # erb :'users/new' is RESTful name for this view
  erb :'users/user_new'
end


post '/users' do
  user = User.new(params[:user])
  if user.save
    redirect "/users/#{user.id}"
  else
    "ERROR"
    # @errors = user.errors.full_messages
    # erb :'users/new'   then have error handling in new view
    # check this out: http://guides.rubyonrails.org/active_record_validations.html
  end
end


get '/users/:user_id' do
  @user = User.find(params[:user_id])
  # erb :'users/show' is RESTful name of this view file
  erb :'/users/user_show'
end

