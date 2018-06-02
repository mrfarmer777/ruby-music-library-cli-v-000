
class Genre
  attr_accessor :name, :artists, :songs

  @@all=[]

  def initialize(name)
    @name=name    #initializes with a name
    @songs=[]
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
    genre = Genre.new(name)
    genre.save
    genre
  end

  #relational methods
  def songs
    @songs
  end





end
