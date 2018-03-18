class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def list_songs
    songs = self.songs.collect do |song|
      song.name
    end
  end

  def list_genres
    genres = self.genres.collect do |genre|
      genre.name
    end.uniq
  end
end
