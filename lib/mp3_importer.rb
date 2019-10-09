class MP3Importer
  attr_reader :path 

def intialize (path)
  @path=path
end

def files 
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
