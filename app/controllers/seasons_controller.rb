class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @episodes = Episode.where("season_id = ?", params[:id])
  end
end
