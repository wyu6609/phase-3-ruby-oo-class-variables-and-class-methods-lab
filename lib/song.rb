require 'pry'
require 'set'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.to_set
  end

  def self.artists
    @@artists.to_set
  end

  def self.genre_count
    result = {}
    @@genres.each do |genre|
      if (result[genre])
        result[genre] += 1
      else
        result[genre] = 1
      end
    end
    result
  end

  def self.artist_count
    result = {}

    @@artists.each do |artist|
      if (result[artist])
        result[artist] += 1
      else
        result[artist] = 1
      end
    end

    result
  end
end
