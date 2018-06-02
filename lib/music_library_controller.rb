class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path=path
    importer=MusicImporter.new(@path)
    importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a parrticular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"


    active=true
    while active
      resp = gets.strip
      case resp
      when 'list songs'
        Song.all
      when 'list artists'
        Artist.all
      when 'list genre'
        Genre.all
      when 'exit'
        active=false
      else
        'please enter a valid command'
      end
    end
  end
end
