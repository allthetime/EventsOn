# Homepage (Root path)


post '/' do
  puts "POST--------------------------"
  type = params[:type]
  date = params[:date].to_date
  redirect "/?type=#{type}&date=#{date}"
end

get '/' do



  if params[:type] || params[:date]
    if params[:type_option] && !params[:date_option]
      @events = Type.find_by(name: params[:type]).events
    elsif params[:date_option] && !params[:type_option]
      @events = Event.where(date:params[:date])
    elsif params[:type_option] && params[:date_option]
      @events = Type.find_by(name: params[:type]).events.where(date:params[:date])
    end
    if @events.empty?
      @results = "none"
    end
    erb :index
  else
    @events = Event.all
    erb :index
  end
end

helpers do
  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
  def current_planner
    @current_planner = EventPlanner.find(session[:planner_id]) if session[:planner_id]
  end
  def salt_string
    chars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    (0...50).map { chars[rand(chars.length)] }.join
  end
  def encrypt(password,salt)
    Digest::SHA256.hexdigest(password+salt)
  end
  def all_events
    Event.all
  end
  def all_venues
    Venue.all
  end
  def all_types
    Type.all
  end
  def log_in(user_type)
    return redirect '/' unless user_type.find_by(name: params[:name])
    password = encrypt(params[:password],user_type.find_by(name: params[:name]).salt)
    if user_type.find_by(name: params[:name]).password == password
      if user_type == EventPlanner
        session[:planner_id] = user_type.find_by(name: params[:name])
      elsif user_type == User
        session[:user_id] = user_type.find_by(name: params[:name])
      end
      redirect '/'
    else
      redirect '/'
    end
  end
end

get '/signup' do
  @user = User.new
  erb :'users/user'
end

get '/signup/event_planner' do
  @planner = EventPlanner.new
  erb :'users/event_planner'
end

post '/signup' do
  salt = salt_string
  password_salted_and_hashed = encrypt(params[:password],salt)
  @user = User.new(
    name: params[:name],
    email: params[:email],
    avatar_url: params[:avatar_url],
    password: password_salted_and_hashed,
    salt: salt
  )
  if @user.save
    redirect '/'
  else
    erb :'users/user'
  end
end

post '/signup/event_planner' do
  salt = salt_string
  password_salted_and_hashed = encrypt(params[:password],salt)
  @planner = EventPlanner.new(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number],
    avatar_url: params[:avatar_url],
    password: password_salted_and_hashed,
    salt: salt
  )
  if @planner.save
    redirect '/'
  else
    erb :'users/event_planner'
  end
end

post '/login' do
  unless params[:planner]
    log_in(User)
  else
    log_in(EventPlanner)
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
  unless Venue.find_by(name: params[:venue])
    @venue = Venue.new(
      name: params[:venue],
      latitude: params[:lat],
      longitude: params[:lng],
      address: params[:street_address] + " " + params[:city]
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
    link_url: params[:link_url],
    picture_url: params[:picture_url],
    date: params[:date].to_date,
    time: params[:time].to_time,
    venue_id: @venue.id
  )
  @event.types << Type.find_by(name: params[:type])
  if @event.save
    redirect "/events/#{@event.id}"
  else
    erb :'events/new'
  end
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'events/index'
end
