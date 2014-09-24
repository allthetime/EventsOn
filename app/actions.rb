# Homepage (Root path)
get '/' do
  erb :index
end

get '/events/new' do
  @event = Event.new
  erb :'events/new'
end

post '/events' do
  @event = Event.new(
    name: params[:name],
    description: params[:description]
    )
  @event.save
end