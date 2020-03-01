require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Red")
    @room = Room.new("Blue")
    @room = Room.new("Yellow")
    @room = Room.new("Green")

    @guest = Guest.new("James Smith")
    @guest = Guest.new("Toby Jones")

  end

  def test_empty_room_at_start
    assert_equal(0, @room.guest_count)
  end

  def test_check_in_guest()
    @room.check_in_guest(@guest)
    assert_equal(1, @room.guest_count())
  end

  def test_add_two_guests()
      @room.check_in_guest(@guest)
      @room.check_in_guest(@guest)
      assert_equal(2, @room.guest_count())
  end

  def test_check_out_guest()
    @room.check_in_guest(@guest)
    @room.check_in_guest(@guest)
    @room.check_out_guest(@guest)
    assert_equal(1, @room.guest_count())

  end

  def test_add_song_to_room()
    @room.add_song_to_room(@song)
    assert_equal(1, @room.song_count())
  end

end
