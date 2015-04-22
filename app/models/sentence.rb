class Sentence < ActiveRecord::Base
  validates :english_sentence, presence: true
  validates :english_phonetic, presence: true
  validates :german_sentence, presence: true
  validates :german_phonetic, presence: true
  validates :japanese_sentence, presence: true
  validates :japanese_romaji, presence: true
  validates :image, presence: true
end
