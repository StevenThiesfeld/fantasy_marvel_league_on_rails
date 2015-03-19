class TradesController < ApplicationController

  def start
    @user2 = User.find(params["id"])
    @trade = Trade.new("user1" => @current_user, "user2" => @user2)
    if @trade.valid_trade
      erb :"trade/start_trade"
    else erb :"trade/bad_trade"
    end
  end

  def confirm
    make_trade(params)
    erb :"trade/trade_finished"
  end
  
end
