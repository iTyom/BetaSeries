class EpisodesController < ApplicationController
  def show
      @episode = Episode.find(params[:id])
      @new_note = Note.new
  end
end
