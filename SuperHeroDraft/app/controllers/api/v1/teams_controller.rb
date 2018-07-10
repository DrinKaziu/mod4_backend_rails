class Api::V1::TeamsController < ApplicationController

  def index
    @hero = Hero.all 
    render json: @hero
  end

  def create
    # team = Team.new(params[team])
  
  end

  def team_id
    request.headers['Authorization']
  end



end
