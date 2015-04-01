get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @likes = @user.likes
  @groups = @user.groups
  erb :'user/show'
end
