get '/cars' do
  @cars = Car.all
  erb :"cars/index"
end

get '/cars/new' do
  @car = Car.new
  erb :'cars/new'
end

get '/cars/:car_id' do
  @car = Car.find(params[:car_id])
  erb :'cars/show'
end

post '/cars' do
  logger.info params[:car]
  @car = Car.new(params[:car])
  
  if @car.save
	redirect '/cars'
  else
  	erb :'cars/new'
  end
end

get '/cars/:car_id/edit' do
	@car = Car.find(params[:car_id])

	erb :"cars/edit"
end

put '/cars/:id' do
	@car = Car.find(params[:id])
	
	if @car.update(params[:car])
		redirect '/cars'
	else
		erb :"cars/edit"
	end
end

delete '/cars/:id' do
  Car.find(params[:id]).destroy
  redirect '/cars'
end