class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  # def create
  #   #raise params.inspect
  #   @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
  #   redirect_to artist_path(@artist)
  # end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    # @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
