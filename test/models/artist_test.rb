require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save with empty name' do
    artist = Artist.new
    artist.save
    refute artist.valid?
  end

  test 'should save valid artist' do
    artist = ARtist.new

    artist.name = 'Name'

    artist.save
    assert artist.valid?
  end



end
