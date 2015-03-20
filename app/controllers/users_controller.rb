class UsersController < ApplicationController

  skip_before_filter :require_login, only: [:login, :logout, :verification, :setup, :confirm_creation, :create]


  def login
    render layout: "login"
  end

  def logout
    session[:user_id] = nil
    redirect_to "/login"
  end

  def verification
    if user = User.find_by_name(params["name"])
      if BCrypt::Password.new(user.password) == params["password"]
        session[:user_id] = user.id
        redirect_to "/profile"
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
    @user = User.new
    render layout: "login" 
  end

  def confirm_creation
    @new_user = User.new(params["user"])
     @errors = @new_user.errors.messages
    if @errors == {}
      render layout: "login"
    else
      render "setup", layout: "login" 
    end
  end

  def create
    params["user"]["password"] = BCrypt::Password.create(params["user"]["password"])
    @current_user = User.create(params["user"])
    @current_user.user_setup
    session[:user_id] = @current_user.id
    redirect_to "/profile"
  end

  def show
    @unviewed_messages = Message.where(to_user_id: @current_user.id, viewed: "no").reverse_order
  end

  def edit
  end

  def update
    if params[:user][:password] != ""
      params[:user][:password] = BCrypt::Password.create(params[:user][:password])
    else
      params[:user][:password] = @current_user.password
    end
    @current_user.update_attributes(params[:user])
    redirect_to "/profile"
  end

  def delete
  end

  def destroy
    @current_user.delete_user
    redirect_to "/logout"
  end
  
end