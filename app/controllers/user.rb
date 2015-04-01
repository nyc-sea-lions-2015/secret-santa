get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @likes = @user.likes
  @groups = @user.groups
  erb :'user/show'
end

get '/users/draw' do
  @user = User.find_by(id: params[:id])
  @assignment = Assignment.where("group_id = ? AND giver_id = ?", params[:group_id], params[:id])
  @receiver = User.find_by(id: @assignment.receiver_id)
  @receiver_likes = @receiver.likes
  erb :'user/draw'
end
