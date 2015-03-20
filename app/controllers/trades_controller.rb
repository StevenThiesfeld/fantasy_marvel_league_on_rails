class TradesController < ApplicationController

  def start
    @user2 = User.find(params["id"])
    @trade = Trade.new("user1" => @current_user, "user2" => @user2)
    if @trade.valid_trade
      render "start"
    else 
      render "bad_trade"
    end
  end

  def confirm
    view_context.make_trade(params[:trade])
  end
  
end
