class Artist

  @@song_count = 0

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count = @@song_count + 1
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    @@song_count = @@song_count + 1
    song.artist = self
    # song.artist.name gives me the artist name
  end

  def self.song_count
    @@song_count
  end

end
