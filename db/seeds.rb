# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
sentences = Sentence.create(
  english_sentence: "The rats go through the house.", 
  english_phonetic: "ðiː ɹæts ɡəʊ θɹuː ðiː haʊs",
  german_sentence: "Die Ratten gehen durch das Haus.", 
  german_phonetic: "diː ˈʀatənˈɡeːən dʊʁç das haʊ̯s." , 
  japanese_sentence: "ラットは、家の中を行く。",
  japanese_romaji:"Ratto wa, uchinonaka o iku.",
  image: "Rats in House.jpg")

sentences = Sentence.create(
  english_sentence: "The people stand back in fright.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Die Menschen stehen wieder vor Schreck.", 
  german_phonetic: "xxxxxxxxxxxxxxxx", 
  japanese_sentence: "人々は恐怖に戻って立っている。",
  japanese_romaji:"Hitobito wa kyōfu ni modotte tatte iru.",
  image: "Rats in House.jpg")  

sentences = Sentence.create(
  english_sentence: "The kitchen floor is white and orange.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Der Küchenboden ist weiß und orange.", 
  german_phonetic: "xxxxxxxxxxxxxxxx" , 
  japanese_sentence: "台所の床は白とオレンジです。",
  japanese_romaji:"Daidokoro no yuka wa shiro to orenjidesu.",
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
  english_sentence: "I have dark brown hair.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Ich habe dunkelbraunes Haar.", 
  german_phonetic: "xxxxxxxxxxxxxxxx" , 
  japanese_sentence: "私はダークブラウンの髪を持っている。",
  japanese_romaji: "Watashi wa dākuburaun no kami o motte iru.",
  image: "Luke.jpg")  

sentences = Sentence.create(
  english_sentence: "I am wearing a purple and black Jumper.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Ich trage ein lila und schwarz Jumper.", 
  german_phonetic: "xxxxxxxxxxxxxxxx" , 
  japanese_sentence: "私は紫と黒のジャンパーを着ています。",
  japanese_romaji:"Watashi wa murasaki to kuro no janpā o kite imasu.",
  image: "Luke.jpg")  


sentences = Sentence.create(
  english_sentence: "I live in Edinburgh.", 
  english_phonetic: "aɪ lɪv ɪn ˈɛdɪnbərə",
  german_sentence: "Ich lebe in Edinburgh.", 
  german_phonetic: "ɪç ˈleːbə ɪn ˈɛdɪnbərə." , 
  japanese_sentence: "私は、エジンバラに住んでいます。",
  japanese_romaji: "Watashi wa, ejinbara ni sunde imasu.",
  image: "Edinburgh.jpg")

sentences = Sentence.create(
  english_sentence: "Edinburgh has many parks to go running.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Edinburgh hat viele Parks zum Joggen.", 
  german_phonetic: "xxxxxxxxxxxxxxxx" , 
  japanese_sentence: "エディンバラは、実行中の行くために多くの公園があります。",
  japanese_romaji:"Edinbara wa, jikkō-chū no iku tame ni ōku no kōen ga arimasu.",
  image: "Edinburgh.jpg")  

sentences = Sentence.create(
  english_sentence: "Edinburgh is the capital of Scotland.", 
  english_phonetic: "xxxxxxxxxxxxxxxx",
  german_sentence: "Edinburgh ist die Hauptstadt Schottlands.", 
  german_phonetic: "xxxxxxxxxxxxxxxx" , 
  japanese_sentence: "エジンバラはスコットランドの首都です。",
  japanese_romaji:"Ejinbara wa Sukottorando no shutodesu.",
  image: "Edinburgh.jpg")  
=end

#http://www.treksplorer.com/foreign-language-survival-phrases/ 

#Basic Phrases & Greetings

sentences = Sentence.create( english_sentence: "Hello!" )
sentences = Sentence.create( english_sentence: "How are you? / What’s up?" )
sentences = Sentence.create( english_sentence: "I’m fine. And you?" )
sentences = Sentence.create( english_sentence: "Please." )
sentences = Sentence.create( english_sentence: "Thank you. / Thank you very much." )
sentences = Sentence.create( english_sentence: "Goodbye. / Bye. / See you soon." )
sentences = Sentence.create( english_sentence: "Cheers!" )
sentences = Sentence.create( english_sentence: "Excuse me." )
sentences = Sentence.create( english_sentence: "I’m sorry." )
sentences = Sentence.create( english_sentence: "What’s your name?" )
sentences = Sentence.create( english_sentence: "I’m… / My name is… / I am called…" )
sentences = Sentence.create( english_sentence: "Nice to meet you." )
sentences = Sentence.create( english_sentence: "Where are you from?" )
sentences = Sentence.create( english_sentence: "I’m from…" )
sentences = Sentence.create( english_sentence: "I’d like to introduce my friend/wife/husband." )
sentences = Sentence.create( english_sentence: "How old are you?" )
sentences = Sentence.create( english_sentence: "I’m… years old." )
sentences = Sentence.create( english_sentence: "What do you do for a living?" )
sentences = Sentence.create( english_sentence: "I’m a/an…" )
sentences = Sentence.create( english_sentence: "What do you do for fun? / What are your hobbies?" )
sentences = Sentence.create( english_sentence: "I (don’t) like…" )
sentences = Sentence.create( english_sentence: "Yes." )
sentences = Sentence.create( english_sentence: "No." )

