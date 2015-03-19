#------------------------------------------------------------------------------
#LOGIN/USER ROUTES
#------------------------------------------------------------------------------ 


before do
  if request.path_info.include?("/login") == false
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect_to "/login"
    end
  end
end  


def login
  render layout: "login"
end

def logout
  session[:user_id] = nil
  redirect_to "/login"
end

def verification
  if user = User.find_by(name: params["name"])
    binding.pry
    if BCrypt::Password.new(user.password) == params["password"]
      session[:user_id] = user.id
      redirect_to "/user/profile"
    else
      @error = "invalid Password"
      render "login", layout: "login"
    end
  else
    @error = "Invalid User Name"
    render "login", layout: "login"
  end
end

def setup
  render layout: "login" 
end

def confirm_creation
  @new_user = User.new(params)
   @errors = @new_user.errors.messages
  if @errors == {}
    render layout: "login"
  else
    render "setup", layout: "login" 
  end
end

def create
  params["password"] = BCrypt::Password.create(params["password"])
  @current_user = User.create(params)
  @current_user.user_setup
  session[:user_id] = @current_user.id
  redirect_to "/user/profile"
end

def profile
  @unviewed_messages = Message.where(to_user_id: @current_user.id, viewed: "no").reverse_order
  erb :"user/profile"
end

def edit
  erb :"user/edit_profile"
end

def update
  params[:password] = BCrypt::Password.create(params["password"])
  @current_user.update(params)
  redirect_to "/user/profile"
end

def delete
  erb :"user/delete_profile"
end

def destroy
  @current_user.delete_user
  redirect_to "/logout"
end