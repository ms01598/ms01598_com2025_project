require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save empty note' do
    note = Note.new
    note.save
    refute note.valid?
  end

  test 'should save valid note' do
    note = Note.new

    note.song_id = song_id
    note.description = "Description"

    note.save
    assert note.valid?
  end


end
