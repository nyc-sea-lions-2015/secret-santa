get '/users/:id' do
  ## Lets refactor
  @user = User.includes(:likes, :groups).find(params[:id])
  erb :'user/show'
end

get '/users/draw' do
  @user = User.find_by(id: params[:id])
  # This maybe should be moved into the model... model should be capable of retrieving the data
  # and not clutter up the controller
  @assignment = Assignment.includes(:receiver).where("group_id = ? AND giver_id = ?", params[:group_id], params[:id])
  @receiver = @assignment.receiver
  #@receiver = User.find_by(id: @assignment.receiver_id)
  @receiver_likes = @receiver.likes
  erb :'user/draw'
end
