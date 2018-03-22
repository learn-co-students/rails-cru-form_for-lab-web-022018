class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    get_song
  end

  def show
    get_song
  end

  def update
    get_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end
  
  private

  def song_params
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end

  def get_song
    @song = Song.find(params[:id])
  end



end
