class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(artist_params)
    @artist.save
    redirect_to @artist
  end

  def destroy
    set_artist
    @artist.destroy
    redirect_to artists_path
  end

  def index
    @artists = Artist.all
  end

  def show
    set_artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
