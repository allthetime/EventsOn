# Homepage (Root path)
get '/' do
  erb :index
end

helpers do
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




