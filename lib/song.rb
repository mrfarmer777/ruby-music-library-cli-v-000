
class Song
  attr_accessor :name
  attr_reader :artist, :genre

  @@all=[]

  def initialize(name,artist=nil,genre=nil)
    @name=name    #initializes with a name
    self.artist=(artist)
    self.genre=(genre)

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
    song = Song.new(name)
    song.save
    song
  end

  #relational methods
  def artist=(artist)
    @artist=artist
    if artist != nil
      artist.add_song(self)
    end
  end

  def genre=(genre)
    @genre=genre
    if genre !=nil && !genre.songs.include?(self)
      genre.add_song(self)
    end
  end

  def self.find_by_name(name)
    @@all.detect {|song| song.name==name}
  end

  def self.find_or_create_by_name(name)
    res=Song.find_by_name(name)
    if res==nil
      Song.create(name)
    else
      res
    end
  end

  def self.new_from_filename(filename)
    artist=filename.split(" - ")[0]
    title=filename.split(" - ")[1].sub(".mp3","")
    song=Song.find_or_create_by_name(title)
    song.artist=artist
  end





end
