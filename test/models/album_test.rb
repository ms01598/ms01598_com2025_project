require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save with empty title' do
    album = Album.new
    album.save
    refute album.valid?
  end

  test 'should save valid album' do
    album = Album.new

    album.title = 'Album'
    album.number_of_songs = 2
    album.release_year = 2020

    album.save
    assert album.valid?
  end




end
