get '/groups/:id' do
  @group = Group.find_by(id: params[:id])
  erb :'group/show'
end
