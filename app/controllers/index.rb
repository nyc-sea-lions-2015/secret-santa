get '/' do
  erb :'index/index'
end

get '/auth/login' do
  erb :'index/login'
end

put '/auth/login' do
  user = User.find_by(email: params[:email])

  if user.try(:authenticate, params[:password])
    redirect "/users/#{user.id}"
  else
    redirect '/auth/login?error=noauth'
    # @error = ''
  end
end

get '/auth/signup' do
  erb :'index/signup'
end

post '/auth/signup' do
  @user = User.new(params)

  if @user.save
    session[:user_id] = @user.id
    redirect "/users/<%= @user.id %>"
  else
    redirect '/auth/signup?error=noauth'
    # @error = ''
  end
end

delete '/auth/logout' do
  session[:user_id] = nil
  @error = 'You have successfully logged out.'
  redirect '/auth/login'
end
