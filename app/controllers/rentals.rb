get "/users/:user_id/rentals" do
	redirect "/" if params[:user_id].to_i != session[:id]
	@user = User.find params[:user_id]
	@rentals = @user.rentals
	erb :'rentals/index'
end