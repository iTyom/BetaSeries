class SeriesController < ApplicationController
  def index
    @series = Serie.where("view = 'true'")
  end

  def show
    @serie = Serie.find(params[:id])
    @seasons = Season.where("serie_id = ?", params[:id])
  end
end
