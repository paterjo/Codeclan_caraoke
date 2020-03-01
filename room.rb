class Room
  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
    @songs = []

  end

  def guest_count
      return @guests.count()
  end

  def check_in_guest(new_guest)
    @guests.push(new_guest)
  end

  def check_out_guest(guest)
     index = @guests.index(guest)
     @guests.slice!(index, 1)
  end

  def song_count
      return @songs.count()
  end

  def add_song_to_room(new_song)
    @songs.push(new_song)
  end
end
