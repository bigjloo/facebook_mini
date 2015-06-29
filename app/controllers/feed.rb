require 'byebug'

get '/feed/new' do
  erb :feed_new
end

post '/feed' do
  @feed = Feed.new(params[:feed])
  if @feed.save
    @tags = params[:tags].split(", ")
    @tags.each do |tag|
      @feed.tags << Tag.find_or_create_by(title: tag)
    end

  if logged_in?
    @feed.update(user_id: @current_user.id)
    redirect to "/user/#{@current_user.id}"
  end
    redirect to '/'
  else
    redirect to "/?errors=#{@feed.errors.messages}"
  end
end

post '/feed/:id/comment' do

end

get '/feed/:user_id/edit' do
  @feed= Feed.find_by_user_id(params[:user_id])
  erb :feed_update
end

patch '/feed/:user_id' do
  @feed = Feed.find_by_user_id(params[:user_id])
  @feed.update_attributes(params[:feed])
  if @feed.save
    redirect to "/user/#{current_user.id}"
  end
end

delete '/feed/:user_id' do
  @feed= Feed.find_by_user_id(params[:user_id])
  @feed.destroy
  redirect to "/user/#{current_user.id}"
end
