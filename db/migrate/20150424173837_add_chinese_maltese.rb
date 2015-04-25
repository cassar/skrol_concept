class AddChineseMaltese < ActiveRecord::Migration
  def change
    add_column :sentences, :chinese_traditional, :string
    add_column :sentences, :chinese_simplified, :string
    add_column :sentences, :chinese_phonetic, :string
    add_column :sentences, :maltese, :string
    add_column :sentences, :maltese_phonetic, :string
  end
end
