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
  end
end

get '/auth/signup' do
  erb :'index/signup'
end
