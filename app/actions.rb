# Homepage (Root path)
get '/' do
  erb :index
end

helpers do
  @chars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"] 
  def salt_string
    (0...50).map { @chars[rand(@chars.length)] }.join
  end
end

post '/signup' do
  salted_and_hashed_password = Digest::SHA256.hexdigest(params[:password]+salt_string)
  @user = User.new(
    name: params[:name],
    password: password
  )
  if @user.save
    redirect '/'
  else
    erb :signup
  end
end

post '/login'

end