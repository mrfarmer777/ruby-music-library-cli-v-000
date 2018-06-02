class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
    @files=Dir.chdir(path).glob("*")
  end

end
