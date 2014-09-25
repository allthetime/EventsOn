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
    description:  params[:description],
    link_url: params[:link_url],
    picture_url: params[:picture_url],
    date: Time.new(params[:date]),
    venue_id: 1
  )
  if @event.save
    redirect "/events/#{@event.id}"
  else
    erb :'event/new'
  end
end