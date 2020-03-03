require 'pry'

class Song

  extend Memorable::Class Methods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable


  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
