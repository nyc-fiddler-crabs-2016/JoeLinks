get '/posts' do
  # utilize a model method here
  @posts = Post.all.order(created_at: :desc)
  # /posts/index is RESTful name for view here
  erb :'/posts/post_index'
end


get '/posts/new' do
  # posts/new
  erb :'posts/post_new'
end


post'/posts' do
  post = Post.new(params[:post]) #make sure you are associating this post with the current_user, not with a user_id from the form, otherwise posts can be spoofed with http tool like Curl
  # user = current_user
  # post = user.posts.new(params[:post])
  if post.save
    redirect "/posts/#{post.id}"
  else
    #error handling here, see note in user controller
    "ERROR"
  end
end


get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  @comments = @post.comments_sorted_most_recent #nice
  # posts/show is name of view here
  erb :'/posts/post_show'
end



