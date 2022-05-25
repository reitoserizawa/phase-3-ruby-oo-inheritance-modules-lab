require 'pry'
require_relative './memorable.rb'
require_relative './findable.rb'


class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable
  extend Findable

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
