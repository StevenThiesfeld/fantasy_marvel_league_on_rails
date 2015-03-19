
def new
    @to_user = User.find(params["id"])
    erb :"messages/new"
  end
end

def send
  params["from_user_id"] = @current_user.id
  @message = Message.create(params)
  redirect_to "/messages"
end

def index
  @messages = Message.where("to_user_id = ? OR from_user_id = ?", @current_user.id, @current_user.id).reverse_order
  erb :"messages/messages"
end