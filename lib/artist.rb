
class Artist
  attr_accessor :name, :songs, :genres

  @@all=[]

  def initialize(name)
    @name=name    #initializes with a name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist==nil
      song.artist=self
      if !@songs.include?(song)
        @songs<<song
      end
    end
  end

  ##! How is this going to be generalizable?
  def self.all  #expose the class variable @@all
    @@all
  end

  def self.destroy_all #destroy all songs!
    @@all.clear
  end

  def save
    @@all<<self  #generalizable save method that requires the all method
  end

  def self.create(name) #just like initialize, but with save!
    artist = Artist.new(name)
    artist.save
    artist
  end





end
