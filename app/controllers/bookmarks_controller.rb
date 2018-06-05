class BookmarksController < ApplicationController
  before_action :authenticate_user!

    def index
      @bookmarks = Bookmark.where("user_id = ?", current_user)

    end

    def show
      @bookmarks = Bookmark.where("user_id = ?", current_user)
    end

    def new
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

    def destroy
      @serie = Serie.find(params[:series_id])
      @delete_bookmark = Bookmark.where("serie_id = ? AND user_id = ?", @serie, current_user).delete_all
      flash[:notice] = "Votre série a été supprimé."
      redirect_to series_path(@serie)
    end

    private
    def bookmark_params
      params.permit(:serie, :user)
    end
end
