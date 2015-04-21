# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sentences = Sentence.create(
  english_sentence: "The rats go through the house.", 
  english_phonetic: "ðiː ɹæts ɡəʊ θɹuː ðiː haʊs",
  german_sentence: "Die Ratten gehen durch das Haus.", 
  german_phonetic: "diː ˈʀatənˈɡeːən dʊʁç das haʊ̯s." , 
  japanese_sentence: "ラットは、家の中を行く。",
  japanese_romaji:"Ratto wa, uchinonaka o iku.",
  image: "Rats in House.jpg")

sentences = Sentence.create(
  english_sentence: "Hello, my name is Luke.", 
  english_phonetic: "hɛˈləʊ̯, maɪ neɪm ɪz luk",
  german_sentence: "Hallo, mein Name ist Luke.", 
  german_phonetic: "haˈloː, maɪ̯n ˈnaːmə ɪst ˈluːkə." , 
  japanese_sentence: "こんにちは、私の名前はルカです。",
  japanese_romaji: "Kon'nichiwa, watashinonamaeha Rukadesu.",
  image: "Luke.jpg")

sentences = Sentence.create(
  english_sentence: "I live in Edinburgh.", 
  english_phonetic: "aɪ lɪv ɪn ˈɛdɪnbərə",
  german_sentence: "Ich lebe in Edinburgh.", 
  german_phonetic: "ɪç ˈleːbə ɪn ˈɛdɪnbərə." , 
  japanese_sentence: "私は、エジンバラに住んでいます。",
  japanese_romaji: "Watashi wa, ejinbara ni sunde imasu.",
  image: "Edinburgh.jpg")