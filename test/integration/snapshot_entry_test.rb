require 'test_helper'

class SnapshotEntryTest < ActionDispatch::IntegrationTest
  test 'successful snapshot entry' do
    get new_snapshot_path
    assert_difference 'Snapshot.count', 1 do
      post_via_redirect snapshots_path, snapshot: {
        title: 'A new title!',
        language: 'Latino',
        entry: "I just cant't get enough, I just can't get enough"
      }
    end
    assert_template 'snapshots/show'
  end
end
