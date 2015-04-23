class AddPortuguese < ActiveRecord::Migration
  def change
    add_column :sentences, :portuguese, :string
    add_column :sentences, :portuguese_phonetic, :string
  end
end
