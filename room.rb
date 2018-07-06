class Room

  attr_reader :guests, :songs

  def initialize(guests, songs)
    @guests = guests
    @songs = songs
  end

  def add_guest_to_room(guest)
    @guests << guest
  end

  def add_song_to_room(song)
    @songs << song
  end

end
