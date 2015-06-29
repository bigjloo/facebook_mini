post '/comment/:feed_id' do
    @new_comment= Comment.new(comment_content:params[:content], user_id: current_user.id, feed_id: params[:feed_id])
    if @new_comment.save
      redirect to '/'
    else
      redirect to "/"
    end
end

get '/comment/:user_id/edit' do
  @comment= Comment.find_by_user_id(params[:user_id])
  erb :comment_update
end

patch '/comment/:user_id' do
  @comment = Comment.find_by_user_id(params[:user_id])
  @comment.update_attributes(params[:comment])
  if @comment.save
    redirect to "/user/#{current_user.id}"
  end
end

delete '/comment/:user_id' do
  @comment= Comment.find_by_user_id(params[:user_id])
  @comment.destroy
  redirect to "/user/#{current_user.id}"
end

