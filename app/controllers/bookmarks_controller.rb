class BookmarksController < ApplicationController
  before_action :authenticate_user!

    def create
      @serie = Serie.find(params[:series_id])
      @new_bookmark = Bookmark.new(bookmark_params)
      @new_bookmark.serie = @serie
      @new_bookmark.user = current_user

      if @new_bookmark.valid?
        @new_bookmark.save!
        flash[:notice] = "Votre série a été ajouté."
        redirect_to series_path(@serie)
      else
        render "series/show"
      end
    end

    private
    def bookmark_params
      params.permit(:serie, :use)
    end
end
