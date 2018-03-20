class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.valid?
      redirect_to @artist
    else
      flash[:error] = @artist.erros.full_messages
      redirect_to new_artist_path
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    if @artist.valid?
      redirect_to @artist
    else
      flash[:error] = @artist.erros.full_messages
      redirect_to edit_artist_path(@artist)
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
