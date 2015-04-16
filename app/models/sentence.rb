class Sentence < ActiveRecord::Base
  validates :EnglishSentence, presence: true
  validates :EnglishPhonetic, presence: true
  validates :GermanSentence, presence: true
  validates :GermanPhonetic, presence: true
  validates :JapaneseSentence, presence: true
  validates :JapaneseRomaji, presence: true
  validates :image, presence: true
end
