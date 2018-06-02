class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path=path
    importer=MusicImporter.new(@path)
  end

  def call
    "welcome to the music library"
  end
end
