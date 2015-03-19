class CharactersController < ApplicationController
  
  def add
    @char = Character.create(params[:character])
    redirect_to "/characters"
  end

  def swap_user
    char = Character.find(params["id"])
    char.update({user_id: @current_user.id, team_id: 0})
    redirect_to "/characters"
  end
  

  def index
    @characters = @current_user.characters
  end

  def all
    @users = User.all
  end

  def drop
    char =  Character.find(params["id"])
    char.update({team_id: 0, user_id: 0})
    redirect_to "/characters"
  end  
  
end