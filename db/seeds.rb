# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sentences = Sentence.create(
  EnglishSentence: "The rats go through the house.", 
  EnglishPhonetic: "ðiː ɹæts ɡəʊ θɹuː ðiː haʊs",
  GermanSentence: "Die Ratten gehen durch das Haus.", 
  GermanPhonetic: "diː ˈʀatənˈɡeːən dʊʁç das haʊ̯s." , 
  JapaneseSentence: "ラットは、家の中を行く。",
  JapaneseRomaji:"Ratto wa, uchinonaka o iku.",
  image: "Rats in House.jpg")

sentences = Sentence.create(
  EnglishSentence: "Hello, my name is Luke.", 
  EnglishPhonetic: "hɛˈləʊ̯, maɪ neɪm ɪz luk",
  GermanSentence: "Hallo, mein Name ist Luke.", 
  GermanPhonetic: "haˈloː, maɪ̯n ˈnaːmə ɪst ˈluːkə." , 
  JapaneseSentence: "こんにちは、私の名前はルカです。",
  JapaneseRomaji: "Kon'nichiwa, watashinonamaeha Rukadesu.",
  image: "Luke.jpg")

sentences = Sentence.create(
  EnglishSentence: "I live in Edinburgh.", 
  EnglishPhonetic: "aɪ lɪv ɪn ˈɛdɪnbərə",
  GermanSentence: "Ich lebe in Edinburgh.", 
  GermanPhonetic: "ɪç ˈleːbə ɪn ˈɛdɪnbərə." , 
  JapaneseSentence: "私は、エジンバラに住んでいます。",
  JapaneseRomaji: "Watashi wa, ejinbara ni sunde imasu.",
  image: "Edinburgh.jpg")