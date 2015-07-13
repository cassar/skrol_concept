class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.string :title
      t.string :language
      t.text :entry

      t.timestamps null: false
    end
  end
end
