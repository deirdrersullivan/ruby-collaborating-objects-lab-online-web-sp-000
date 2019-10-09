class Artist 
  attr_accessor :name, :songs
  
  
@@all = []

def initialize (name)
  @name =name
end

def self.all
  @all
end

def add_song
  song.artist = self
end

def songs 
  Song.select.all {|song| song.artist = self}
end

def find_or_create_by_name
  self.find(name) ? self.find(name) : self.new(name)
end

def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

def print_songs
  songs.each {|song| song.name}
end


def save
  @@all << self
end

end

