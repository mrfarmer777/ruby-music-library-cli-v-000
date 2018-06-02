class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
  end

  def files
    file_list=Dir[@path+"/*.mp3"]
    file_list.collect {|file_name| file_name.sub(".mp3","")}
  end

end
