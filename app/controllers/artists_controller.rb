class ArtistsController < ApplicationController

  # build in the ability to create, update, and show for each model.
  def index
  end

  def create
    # @post = Post.new(post_params(:title, :description))
    # @post.save
    # @artist=Artist.new(params[:artist].require([:artist][:name],[:artist][:bio]))
    @artist=Artist.new(params[:artist].permit(:name,:bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist=Artist.find(params[:id])
  end

  def new
    @artist=Artist.new
  end

  def show
    @artist=Artist.find(params[:id])
  end

  def update
    # binding.pry
    @artist=Artist.find(params[:id])
    # params.permit(:name,:bio)
    # @artist=Artist.update({params[:artist][:name],params[:artist][:bio]})
    # @artist=Artist.update(artist_params(:bio),artist_params(:name))
    # @artist=Artist.update(artist_params(:bio,:name))
  	@artist.update(artist_params)
    # @artist.save

    redirect_to artist_path(@artist)
  end

  private
  def artist_params(*args)
    params.require(:artist).permit(:name,:bio)
  end


end#end class
