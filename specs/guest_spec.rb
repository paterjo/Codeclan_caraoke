require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("James Smith")
  end

  def test_has_name
    assert_equal("James Smith", @guest.name)
  end
end
