class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @episode = Episode.find(params[:episode_id])
    @new_note = Note.new(note_params)
    @new_note.episode = @episode
    @new_note.user = current_user

    if @new_note.valid?
      @new_note.save!
      flash[:notice] = "Votre commentaire a été ajouté."
      redirect_to episode_path(@episode)
    else
      render "episodes/show"
    end
  end
 
  private
  def note_params
    params.require(:note).permit(:episode, :user, :note, :comment)
  end
end
