class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def show
    @series = Serie.all
    @serie = Serie.find(params[:id])
    @seasons = Season.where("serie_id = ?", params[:id])
    @new_bookmark = Bookmark.new
    @bookmark = Bookmark.where("user_id = ? AND serie_id = ?", current_user, @serie)
  end
end
