class BookmarksController < ApplicationController
  def index
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @movies = Movie.all
    @list = List.find(params[:id])
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @bookmark = Bookmark.find(params[:list_id])
    @bookmark.destroy
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :rating, :list_id, :movie_id)
  end
end
