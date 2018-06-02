
class Song
  attr_accessor :name, :artist, :genre

  @@all=[]

  def initialize(name)
    @name=name    #initializes with a name
  end

  ##! How is this going to be generalizable?
  def self.all  #expose the class variable @@all
    @@all
  end

  def self.destroy_all #destroy all songs!
    @@all.clear
  end

  def save
    self.class.all<<self  #generalizable save method that requires the all method
  end

  def create(name) #just like initialize, but with save!
    song = Song.new(name)
    song.save
  end
    


end
  