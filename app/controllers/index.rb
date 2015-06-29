require 'byebug'

get '/' do
  # Look in app/views/index.erb
  @all_feeds = Feed.last(3).reverse
  @errors = params[:errors] if !params[:errors].nil?
  erb :index
end
