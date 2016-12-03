class Ps4Controller < ApplicationController
  def create
  	@game= Game.new
  end
  def addgame
  	@game= Game.new
  end
  def show
  	return @game.find(params(:id));
  end


end
