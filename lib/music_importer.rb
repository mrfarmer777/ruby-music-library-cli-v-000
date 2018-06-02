class MusicImporter
  attr_accessor :path, :files


  def initialize(path)
    @path=path
  end

  def files
    file_list=Dir[@path+"/*.mp3"]
    file_list.collect {|file_name| file_name.split("/mp3s/")[1]}
  end

  def import
    self.files.each do |filename|
      Song.find_orcreate_from_filename(filename)
    end
  end



end
