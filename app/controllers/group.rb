get '/groups/:id' do
  @user = User.find_by(id: session[:user_id])
  @group = Group.find_by(id: params[:id])
  @creator = User.find_by(id: @group.creator_id)
  erb :'group/show'
end
