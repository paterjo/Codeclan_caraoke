require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song.rb')

class Testsong < Minitest::Test

  def setup
    @song = Song.new("Alfie")
    @song = Song.new("Yesterday")
  end

  def test_has_name
    assert_equal("Alfie", @song.name)
  end
end
