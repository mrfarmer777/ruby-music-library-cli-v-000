class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
    @files=Dir[path]
  end

end
