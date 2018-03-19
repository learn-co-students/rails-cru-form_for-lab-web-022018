class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(params[:id])
    @artist = Artist.find(params[:id])
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new
    @song.save
    redirect_to song_path(@song)
  end
  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:genre_id,:name,:artist_id))
    redirect_to song_path(@song)
  end
  def edit
    @song = Song.find(params[:id])
  end

end
