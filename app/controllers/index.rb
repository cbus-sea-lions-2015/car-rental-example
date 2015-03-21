before do
	unless request.path_info == '/' || request.path_info == '/sessions/new' || request.path_info == '/sessions'
		logger.info "secured route check"
		if session[:id] == nil
			logger.info "redirecting because you are not logged in fool"
			redirect '/sessions/new'
		end
	end
end

get '/' do
	redirect '/sessions/new'
end