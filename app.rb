require "sinatra"

get '/' do
	erb :welcome
end

post '/name' do
	first_name = params[:first_name]
	redirect '/pizza_type?first_name=' + first_name
end

get '/pizza_type' do
	first_name = params[:first_name]
	erb :pizza_type, :locals => {:first_name => first_name}
end

post '/pizza' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	redirect '/crust_type?first_name=' + first_name + '&pizzatype=' + pizzatype
end

get '/crust_type' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	erb :crust_type, :locals => {:first_name => first_name, :pizzatype => pizzatype}
end

post '/crust' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	crust_type = params[:crust_type]
	redirect '/toppings?first_name=' + first_name + '&pizzatype=' + pizzatype + '&crust_type' + crust_type
end

get '/toppings' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	crust_type = params[:crust_type]
	erb :toppings, :locals => {:first_name => first_name, :pizzatype => pizzatype, :crust_type => crust_type}
end

post '/toppings' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	crust_type = params[:crust_type]
	toppings = params[:toppings]
	redirect '/final_order?first_name=' + first_name + '&pizzatype=' + pizzatype + '&crust_type=' + crust_type + '&toppings=' + toppings
end

get '/final_order' do
	first_name = params[:first_name]
	pizzatype = params[:pizzatype]
	crust_type = params[:crust_type]
	toppings = params[:toppings]
	erb :final_order, :locals => {:first_name => first_name, :pizzatype => pizzatype, :crust_type => crust_type, :toppings => toppings}
end