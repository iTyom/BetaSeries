class EpisodesController < ApplicationController
  def show
      @episode = Episode.find(params[:id])
      @season = Season.where("episode_id = ?", params[:id])
      @serie = Serie.where("season_id = ?", params[:season_id])
      @notes = Note.where("episode_id = ?", params[:id])
      @new_note = Note.new
      @users_episodes_series_view = UsersEpisodesSerie.where("user_id = ? AND serie_id = ? AND episode_id = ?", current_user, params[:series_id], params[:id])

  end
end
