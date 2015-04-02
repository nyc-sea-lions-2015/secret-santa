get '/groups/:id' do
  # After we create the current_user helper:
  # @user = User.find_by(id: session[:user_id])
  # Becomes:
  # @user = current_user
  # And we're not using it in our view, so lets remove it.
  #
  # If you are looking up by primary key (id) then use find:
  #@group = Group.find_by(id: params[:id])
  @group = Group.includes(:creator).find(params[:id])

  # Use the AR association methods:
  #@creator = User.find_by(id: @group.creator_id)
  # becomes:
  #@creator = @group.creator
  # And since we used include above, we'll take out this instance variable
  erb :'group/show'
end
