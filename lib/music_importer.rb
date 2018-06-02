class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
    basedir = path
    @files=Dir.glob("*.mp3")
  end

end
