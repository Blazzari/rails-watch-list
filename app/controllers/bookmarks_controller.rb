class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find([params[:list_id]])
    @movies = Movie.all
  end

  def create
  end

  def destroy
  end

  def show
  end
end
