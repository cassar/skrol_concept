require 'test_helper'

class SnapshotEditTest < ActionDispatch::IntegrationTest

  def setup
    @snapshot = snapshots(:entry_1)
  end

  test 'successful edit' do
    get edit_snapshot_path(@snapshot)
    assert_template 'snapshots/edit'
    title = 'New Section Title'
    language = 'English'
    entry = 'New Entry Entry'
    patch snapshot_path(@snapshot), snapshot: { 
      title: title,
      language: language,
      entry: entry
    }
    assert_redirected_to @snapshot
    @snapshot.reload
    assert_equal title, @snapshot.title
    assert_equal language, @snapshot.language
    assert_equal entry, @snapshot.entry
  end  
end
