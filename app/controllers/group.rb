get '/groups/:id' do
  puts "This is sessions #{session[:user_id]}"
  @user = User.find_by(id: session[:user_id])
  @group = Group.find_by(id: params[:id])
  @creator = User.find_by(id: @group.creator_id)
  p @user
  erb :'group/show'
end
