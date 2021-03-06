get '/sessions/new' do
	erb :"sessions/new"
end

post '/sessions' do
	@user = User.authenticate(params[:username], params[:password])
	if @user 
		session[:id] = @user.id
		redirect "/users/#{@user.id}"
	else
		erb :"sessions/new"
	end
	
end

get '/logout' do
	session[:id] = nil
	redirect '/'
end