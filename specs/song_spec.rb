require("minitest/autorun")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
   @song1 = Song.new("This charming man", "The Smiths")
  end

  def test_song_has_a_name
    assert_equal("This charming man", @song1.name)
  end

  def test_song_has_an_artist
    assert_equal("The Smiths", @song1.artist)
  end
end
