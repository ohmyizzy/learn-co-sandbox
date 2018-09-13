class Album 
  
  attr_accessor :name, :songs
  
  @@album_count = 0
  
  def initialize(album_name)
    @name = album_name
    @songs = []
    @@album_count += 1
  end
  
  def add_song(song_name)
    @songs << song_name
  end
  
  def self.count 
    @@album_count
  end
  
end

Album.new("Happy")
Album.new("Melodrama")
Album.new("Reputation")

puts Album.count 