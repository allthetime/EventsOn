# Homepage (Root path)
get '/' do
  erb :index
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
end

get '/signup' do
  @user = User.new
  erb :'users/index'
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
    erb :'users/index'
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

get '/login' do
  erb :'/login'
end

post '/login' do
  unless params[:planner]
    return redirect '/login' unless User.find_by(name: params[:name])
    password = encrypt(params[:password],User.find_by(name: params[:name]).salt)
    if User.find_by(name: params[:name]).password == password
      session[:user_id] = User.find_by(name: params[:name])
      redirect '/'
    else
      redirect '/login'
    end 
  else
    return redirect '/login' unless EventPlanner.find_by(name: params[:name])
    password = encrypt(params[:password],EventPlanner.find_by(name: params[:name]).salt)
    if EventPlanner.find_by(name: params[:name]).password == password
      session[:planner_id] = EventPlanner.find_by(name: params[:name])
      redirect '/'
    else
      redirect '/login'
    end 
  end
end

post '/logout' do
  session.clear
  redirect '/'
end



