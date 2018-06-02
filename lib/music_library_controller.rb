class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path=path
    importer=MusicImporter.new(@path)
    importer.import
  end

  def call
    puts "Welcome to your music library!"
    resp = gets "What would you like to do?"
  end
end
