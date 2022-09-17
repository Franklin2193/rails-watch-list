class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id]) # list_id
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = @bookmark.list_id
    @bookmark.destroy
  end

  private

  def Bookmark_params
    params.require(:bookmarks).permit(:commet)

  end

end
