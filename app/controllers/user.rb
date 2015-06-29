require 'byebug'

get '/user/login' do
  @error= "PASSWORD ERROR!!!" if !params[:error_password].nil?
  @error= "EMAIL ERROR!!!" if !params[:error_email].nil?
  erb :user_login
end

get '/user/new' do
  erb :user_new
end

post '/user' do
  @new_user = User.new(params[:user])
  @id= @new_user.id
  @new_user.save
  @new_profile = Profile.new(params[:profile])
  @new_profile[:user_id] = User.find_by_email(params[:user][:email]).id
  @new_profile.save
  unless @new_user.new_record?
    @create_success = "User created success MESSAGE"
    redirect to '/user/login'
  else
    redirect to "/?errors= 'Validation fail for signup!'"
  end
end

get '/user/:id' do
  @user = User.find(params[:id])
  authenticate
  if session[:user_id] == @user.id
    erb :user
  else
    redirect to '/'
  end
end
