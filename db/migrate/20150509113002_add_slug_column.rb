class AddSlugColumn < ActiveRecord::Migration
  def change
    add_column :languages, :slug, :string
  end
end
