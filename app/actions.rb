# helpers in ./helpers.rb
helpers do
  require_relative "helpers"
end

# root: main map view
get '/' do
  @events = Event.by_date(params[:date]).by_type(params[:type])
  erb :index
end

get '/signup' do
  @user = User.new
  erb :'users/user'
end


post '/signup' do
  if !(params[:photo] && is_picture?(params[:photo][:filename]))
    @error = true
    erb :'users/user'
  end
  fname = sanitize_filename(params[:photo][:filename])
  File.open("public/uploads/#{fname}", "w") do |f|
    f.write(params[:photo][:tempfile].read)
  end
  salt = salt_string
  password_salted_and_hashed = encrypt(params[:password],salt)
  @user = User.new(
    name: params[:name],
    email: params[:email],
    avatar_url: "public/uploads/" + fname,
    password: password_salted_and_hashed,
    salt: salt
  )
  if @user.save
    redirect '/'
  else
    erb :'users/user'
  end
end


post '/login' do
  return redirect '/' unless User.find_by(name: params[:name])
  password = encrypt(params[:password],User.find_by(name: params[:name]).salt)
  if User.find_by(name: params[:name]).password == password
    session[:user_id] = User.find_by(name: params[:name])
    redirect '/'
  else
    redirect '/'
  end
end

post '/logout' do
  session.clear
  redirect '/'
end

get '/events/new' do
  @event = Event.new
  erb :'events/new'
end



post '/events' do
  @venues = Venue.all
  if !(params[:photo] && is_picture?(params[:photo][:filename]))
    @error = true
    erb :'/events/new'
  end
  fname = sanitize_filename(params[:photo][:filename])
  File.open("public/uploads/#{fname}", "w") do |f|
    f.write(params[:photo][:tempfile].read)
  end
  unless Venue.find_by(name: params[:venue])
    @venue = Venue.new(
      name: params[:venue],
      latitude: params[:lat],
      longitude: params[:lng],
      address: params[:street_address].gsub!(/\r\n/, " ")
    )
  else
    @venue = Venue.find_by(name: params[:venue])
  end
  if @venue.save
    true
  else
    erb :'events/new'
  end
  @event = Event.new(
    name: params[:name],
    description:  params[:description],
    picture_url: "/uploads/" + fname,
    date: params[:date].to_date,
    time: params[:time].to_time,
    venue_id: @venue.id,
    user_id: current_user.id,
    type_name: params[:type]
  )
  if @event.save
    redirect "/events/#{@event.id}"
  else
    erb :'events/new'
  end
end


post '/events/comments' do
  if current_user
    @user = current_user
    @comment = Comment.new(
      content: params[:content],
      user_id: @user.id,
      event_id: params[:event_id]
    )
    if @comment.save
      redirect "/events/#{params[:event_id]}"
    else
      redirect "/events/#{params[:event_id]}"
    end
  end
end

get '/events/:id' do
  @users = User.all
  @event = Event.find(params[:id])
  @venue = Venue.find(@event.venue_id)
  @comments = @event.comments.order(:created_at).reverse
  erb :'events/index'
end
