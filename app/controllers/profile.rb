get '/profile' do
  @user_profile= Profile.find_by_user_id(current_user.id)
  erb :profile_user_show
end

get '/profile/:user_id/edit' do
  @user_profile= Profile.find_by_user_id(params[:user_id])
  erb :profile_user_update
end

patch '/profile/:user_profile_id' do
  @user_profile = Profile.find(params[:user_profile_id])
  @user_profile.update_attributes(params[:profile])
  if @user_profile.save
    redirect to "/user/#{current_user.id}"
  end
end

delete '/profile/:user_id' do
  @user_profile= Profile.find_by_user_id(params[:user_id])
  @user_profile.destroy
  redirect to "/user/#{current_user.id}"
end