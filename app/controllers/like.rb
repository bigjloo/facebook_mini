post '/like/:feed_id/new' do
  if !Like.find_by(feed_id: params[:feed_id], user_id: current_user.id).nil?
    redirect to '/'
  else
    Like.create(feed_id: params[:feed_id], user_id: current_user.id)
    redirect to '/'
  end
end