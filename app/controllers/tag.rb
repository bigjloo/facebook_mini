get '/tag/:title' do
  @tag = Tag.find_by_title(params[:title])
  @all_feed = Tag.find_by_title(params[:title]).feeds
  erb :tag_show_all
end