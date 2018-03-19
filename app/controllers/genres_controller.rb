class GenresController < ApplicationController
  # build in the ability to create, update, and show for each model.
  # build in the ability to create, update, and show for each model.
  def index
  end

  def create
    @genre=Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def new
    @genre=Genre.new
  end

  def show
    @genre=Genre.find(params[:id])
  end

  def update
    # binding.pry
    @genre=Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private
  def genre_params(*args)
    params.require(:genre).permit(:name)
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
