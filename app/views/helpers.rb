def sanitize_filename(filename)
  filename.gsub(/[^\w\.\-]/,"_")
end
def is_picture?(filename)
  filename =~ /([^\s]+(\.(?i)(JPG|jpg|PNG|png|GIF|gif|BMP|bmp))$)/
end
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
def all_types
  ["music","art","festival","market","dance","comedy","theatre"]
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