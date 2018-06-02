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
    active=true
    while active
      resp = gets.strip
      if resp.downcase=="list songs"
        Song.all
      else
        active=false
      end
    end
  end
end
