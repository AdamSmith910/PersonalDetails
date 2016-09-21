require 'sinatra'

get '/' do 
	erb :get_name
end 

post '/users_name' do 
  name = params[:user_name]
  redirect '/age?users_name=' + name # looking for its next parameter
end

get '/age' do
  name = params[:users_name]
  erb :get_age, :locals => {:name => name} # 
end

post '/age' do
  age = params[:age]
  name = params[:retrieved_name]
  "Hello #{name}, you are #{age} years old"
end