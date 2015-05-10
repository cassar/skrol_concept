class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :language_name
      t.string :slug

      t.timestamps null: false
    end
    add_index :languages, :slug, unique: true
  end
end
