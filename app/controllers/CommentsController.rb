post '/comments' do
  comment = Comment.new(params[:comment])
  # see note in post controller regarding avoiding spoofed new records
  if comment.save
    redirect "/posts/#{params[:comment][:post_id]}"
  else
    #error handling here, see notes in user controller
    redirect '/'
  end
end
