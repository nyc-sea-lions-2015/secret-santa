get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @groups = @user.groups
  erb :'users/show'
end
