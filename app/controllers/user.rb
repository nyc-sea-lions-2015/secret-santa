get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @likes = @user.likes
  @groups = @user.groups
  erb :'user/show'
end

get '/users/:id/draw' do
  @assignment = Assignment.where("group_id = ? AND giver_id = ?", params[:group_id], params[:id])
  @receiver = User.find_by(id: @assignment.receiver_id)
  erb :'user/draw'
end
