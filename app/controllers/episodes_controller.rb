class EpisodesController < ApplicationController
  def show
      @episode = Episode.find(params[:id])
      @notes = Note.where("episode_id = ?", params[:id]) 
      @new_note = Note.new
  end
end
