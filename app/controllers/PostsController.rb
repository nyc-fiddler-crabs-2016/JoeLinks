get '/posts' do
  @posts = Post.all.order(created_at: :desc)
  erb :'/posts/post_index'
end


get '/posts/new' do
  erb :'posts/post_new'
end


get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  @comments = @post.comments_sorted_most_recent
  erb :'/posts/post_show'
end


post'/posts' do
  post = Post.new(params[:post])

  if post.save
    redirect "/posts/#{post.id}"
  else
    "ERROR"
  end
end
