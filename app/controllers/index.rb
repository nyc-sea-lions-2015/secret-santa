get '/' do
  erb :'index/index'
end

get '/auth/login' do
  erb :'index/login'
end
