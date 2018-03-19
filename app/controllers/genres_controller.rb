class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by_id(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find_by_id(params[:id])
  end

  def create
    @genre = Genre.new(genre_params(:name, :artist_id, :genre_id))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name, :artist_id, :genre_id))
    redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
