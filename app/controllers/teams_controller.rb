class TeamsController < ApplicationController
  
  def index
    @teams = @current_user.teams
      erb :"teams/teams"
  end

  def all
    @users = User.all
    erb :"teams/all"
  end

  def show
    @team = Team.find_by(slug: params["slug"])
    @team_chars = @team.characters
    erb :"teams/details"
  end

  def new
    erb :"teams/new"
  end  

  def create
    @new_team = Team.create(params)
    if @new_team.errors == []
      redirect_to "/teams"
    else
      @error = "Please Enter a Name"
      erb :"teams/new"
    end
  end


  def edit
    @team = Team.find(params["id"])
    erb :"teams/edit"
  end

  def update
    team = Team.find(params["id"])
    team.update(params)
    team.set_slug
    team.save
    redirect_to "/teams"
  end

  def delete
    @team = Team.find(params["id"])
    erb :"teams/confirm_delete"
  end

  def confirm_delete
    team = Team.find(params["id"]) 
    team.destroy
    redirect_to "/teams" 
  end

  def assign
    char_to_assign = Character.find(params["char_to_assign"])
    char_to_assign.update(team_id: params["team_id"])
    redirect_to "/teams"
  end

  def unassign
    char_to_unassign = Character.find(params["id"])
    char_to_unassign.update(team_id: 0)
    redirect_to "/teams"
  end

end