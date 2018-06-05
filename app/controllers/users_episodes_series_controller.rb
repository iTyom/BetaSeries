class UsersEpisodesSeriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @episode = Episode.find(params[:episodes_id])
    @season = Season.where("episode_id = ?", params[:id])
    @serie = Serie.where("season_id = ?", params[:season_id])
    @new_episode_view = UsersEpisodesSerie.new(episodeView_params)
    @new_episode_view.serie = @episode.season.serie
    @new_episode_view.episode = @episode
    @new_episode_view.user = current_user

    if @new_episode_view.valid?
      @new_episode_view.save!

      redirect_to episode_path(@episode)
    else
      render "episodes/show"
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @season = Season.where("episode_id = ?", params[:id])
    @serie = Serie.where("season_id = ?", params[:season_id])
    @delete_episode_view = UsersEpisodesSerie.where("episode_id = ? AND serie_id = ? AND user_id = ?", params[:id], params[:series_id], current_user).delete_all
      redirect_to episode_path(@episode)
  end

  private
  def episodeView_params
    params.permit(:serie, :episode, :user)
  end
end
