class SongsController < ApplicationController
  get '/songs' do
    @songs=Song.all
    erb :"/songs/index"
  end

  post '/songs' do
    #we create song
    @song = Song.create(name: params[:song_name])
    # binding.pry
    # @create artist if
    if params[:artist_name].size > 0
      @artist = Artist.create(name: params[:artist_name])
    elsif !params[:artist_id].nil? && params[:artist_id].size > 0
      @artist=Artist.find(params[:artist_id])
    else

    end

    @artist.songs << @song # if @artist
    @song.artist = @artist
    # @song.genre  Genre.find(params[:genre_id]) if params[:genre_idx]
    @song.genre_ids  =  params[:song][:genre_ids]# if params[:genre_idx]
    # binding.pry
    @song.save
    # binding.pry
    redirect "/songs/#{@song.slug}"
  end

  get '/songs/new' do
    @artists = Artist.all
    @genres=Genre.all
    erb :"/songs/new"
  end

  get '/songs/:slug' do  #changed id to slug
    #how do we find the song from the slug?
    @song = Song.all.select { |s| s.slug == params[:slug] }[0]
    # binding.pry
    erb :"/songs/show"
  end


end#end class
