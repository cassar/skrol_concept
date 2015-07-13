require 'test_helper'

class SnapshotTest < ActiveSupport::TestCase
  
  def setup
    @snapshot = Snapshot.new(
      title: 'Snapshot Title', 
      language: 'English', 
      entry: 'This is will be the lorem ipsum entry'
    )
  end
  
  test "should be valid" do
    assert @snapshot.valid?
  end
  
  test "title should be present" do
    @snapshot.title = ''
    assert_not @snapshot.valid?
  end  
  
  test 'language should be present' do
    @snapshot.language = ''
    assert_not @snapshot.valid?
  end
  
  test 'entry should be present' do
    @snapshot.entry = '   '
    assert_not @snapshot.valid?
  end
end
