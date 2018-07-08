require("minitest/autorun")
require_relative("../room")
require_relative("../guest")
require_relative("../song")
require('pry')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("guest1", "This charming man")
    @song1 = Song.new("This charming man", "The Smiths")
    @room1 = Room.new([], [@song1])

  end

  def test_room_has_a_song
    assert_equal(1, @room1.songs.length)
  end

  def test_add_guests_to_room
    @room1.add_guest_to_room(@guest1)
    check = @room1.guests.length
    assert_equal(1, check)
  end

  def test_add_songs_to_room
    @room1.add_song_to_room(@song1)
    check = @room1.songs.length
    assert_equal(2, check)
  end

  def test_check_out_guest
    @room1.check_out_guest(@guest1)
    check = @room1.songs.length
    assert_equal(1, check)
  end

end
