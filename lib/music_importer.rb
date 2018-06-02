class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
    @files=Dir[path+"/*.mp3"].split(".")[0]
  end

end
