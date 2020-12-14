require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save with empty title' do
    song = Song.new
    song.save
    refute song.valid?
  end

  test 'should save valid album' do
    song = Song.new

    song.title = 'Title'
    song.artist_id= artist_id
    song.album_id = album_id
    song.duration = 2
    song.favourite = true

    song.save
    assert song.valid?
  end


end
