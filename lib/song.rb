require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   #returns the object associated with the song name
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    #returns an array of all song objects
    @@songs
  end

  # def self.reset_all
  #   #clears the array of all song objects
  #   self.all.clear
  # end
  #
  # def self.count
  #   #returns the total number of objects currently in the registry
  #   self.all.count
  # end

  def artist=(artist)
    #associates an artist with a song
    @artist = artist
  end

  # def to_param
  #   #formats an artist's name, leaving it in lower case, and subsituting spaces with dashes
  #   name.downcase.gsub(' ', '-')
  # end
end
