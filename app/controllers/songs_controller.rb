class SongsController < ApplicationController
  # build in the ability to create, update, and show for each model.
  # build in the ability to create, update, and show for each model.
  def index
    @songs=Song.all
  end

  def create
    @song=Song.new(song_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song=Song.find(params[:id])
  end

  def new
    @song=Song.new
  end

  def show
    @song=Song.find(params[:id])
  end

  def update
    # binding.pry
    @song=Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private
  def song_params(*args)
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end



  # def index
  # end
  #
  # def create
  # end
  #
  # def show
  # end
  #
  # def update
  # end
end#class
