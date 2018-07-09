class Api::V1::TeamsController < ApplicationController

  def index
    @hero = Hero.all 
    render json: @hero
  end

end
