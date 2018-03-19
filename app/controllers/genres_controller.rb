class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    #raise params.inspect
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    # @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
