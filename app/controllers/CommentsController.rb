post '/comments' do
  comment = Comment.new(params[:comment])
  if comment.save
    redirect "/posts/#{params[:comment][:post_id]}"
  else
    redirect '/'
  end
end
