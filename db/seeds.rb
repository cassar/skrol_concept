# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

snapshots = Snapshot.create(
  title: "The standard Lorem Ipsum passage, used since the 1500s",
  language: "English",
  entry: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
)

snapshots = Snapshot.create(
  title: 'Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC',
  language: "English",
  entry: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
)

snapshots = Snapshot.create(
  title: "1914 translation by H. Rackham",
  language: "English",
  entry: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
)

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


#http://www.treksplorer.com/foreign-language-survival-phrases/


sentences = Sentence.create( english_sentence: "Hello!" )
sentences = Sentence.create( english_sentence: "How are you?" )
sentences = Sentence.create( english_sentence: "I'm fine. And you?" )
sentences = Sentence.create( english_sentence: "Please." )
sentences = Sentence.create( english_sentence: "Thank you." )
sentences = Sentence.create( english_sentence: "Goodbye." )
sentences = Sentence.create( english_sentence: "Cheers!" )
sentences = Sentence.create( english_sentence: "Excuse me." )
sentences = Sentence.create( english_sentence: "I'm sorry." )
sentences = Sentence.create( english_sentence: "What's your name?" )
sentences = Sentence.create( english_sentence: "My name is Luke." )
sentences = Sentence.create( english_sentence: "Nice to meet you." )
sentences = Sentence.create( english_sentence: "Where are you from?" )
sentences = Sentence.create( english_sentence: "I'm from Australia." )
sentences = Sentence.create( english_sentence: "I'd like to introduce my friend." )
sentences = Sentence.create( english_sentence: "How old are you?" )
sentences = Sentence.create( english_sentence: "I'm twenty-seven years old." )
sentences = Sentence.create( english_sentence: "What do you do for a living?" )
sentences = Sentence.create( english_sentence: "I'm a web developer." )
sentences = Sentence.create( english_sentence: "What do you do for fun?" )
sentences = Sentence.create( english_sentence: "Yes." )
sentences = Sentence.create( english_sentence: "No." )




sentences = Sentence.create( english_sentence: "Do you speak English?" )
sentences = Sentence.create( english_sentence: "I don't understand." )
sentences = Sentence.create( english_sentence: "I speak a little German" )
sentences = Sentence.create( english_sentence: "I don't speak your language" )
sentences = Sentence.create( english_sentence: "Could you please speak a little slower?" )
sentences = Sentence.create( english_sentence: "Could you write that down?" )
sentences = Sentence.create( english_sentence: "Could you repeat that?" )
sentences = Sentence.create( english_sentence: "How do you say?" )
sentences = Sentence.create( english_sentence: "What does that mean?" )
sentences = Sentence.create( english_sentence: "What time is it?" )
sentences = Sentence.create( english_sentence: "It's five o'clock." )

sentences = Sentence.create( english_sentence: "Shopping and Money" )
sentences = Sentence.create( english_sentence: "How much?" )
sentences = Sentence.create( english_sentence: "I would like" )
sentences = Sentence.create( english_sentence: "Can I pay by credit card?" )
sentences = Sentence.create( english_sentence: "Here you go." )
sentences = Sentence.create( english_sentence: "Could I see this one?" )
sentences = Sentence.create( english_sentence: "What time do you open?" )
sentences = Sentence.create( english_sentence: "Do you have this in a small?" )
sentences = Sentence.create( english_sentence: "Do you have anything cheaper?" )
sentences = Sentence.create( english_sentence: "It's too expensive." )
sentences = Sentence.create( english_sentence: "I'll give you $10 for it." )
sentences = Sentence.create( english_sentence: "Where can I exchange money?" )

sentences = Sentence.create( english_sentence: "Transportation" )
sentences = Sentence.create( english_sentence: "How much for a first class ticket to ?" )
sentences = Sentence.create( english_sentence: "A one-way (return ticket) to please." )
sentences = Sentence.create( english_sentence: "Here's my passport." )
sentences = Sentence.create( english_sentence: "What time does the train from Berlin arrive?" )
sentences = Sentence.create( english_sentence: "What time does the train to Munich depart?" )
sentences = Sentence.create( english_sentence: "Which platform?" )
sentences = Sentence.create( english_sentence: "Is the train direct?" )
sentences = Sentence.create( english_sentence: "Do I have to change trains?" )
sentences = Sentence.create( english_sentence: "Do I need a seat reservation?" )
sentences = Sentence.create( english_sentence: "Is this seat taken?" )
sentences = Sentence.create( english_sentence: "When is the next train to Hamburg?" )
sentences = Sentence.create( english_sentence: "Could you call me a taxi?" )
sentences = Sentence.create( english_sentence: "I'd like to go to" )
sentences = Sentence.create( english_sentence: "Could you let me know when to get off?" )
sentences = Sentence.create( english_sentence: "Where could I rent a bike?" )
sentences = Sentence.create( english_sentence: "I'd like to rent a bike car." )


sentences = Sentence.create( english_sentence: "Eating and Drinking" )
sentences = Sentence.create( english_sentence: "Could you recommend a good restaurant?" )
sentences = Sentence.create( english_sentence: "What would you recommend?" )
sentences = Sentence.create( english_sentence: "What are some local specialties?" )
sentences = Sentence.create( english_sentence: "What is the special of the day?" )
sentences = Sentence.create( english_sentence: "Could I see the menu, please?" )
sentences = Sentence.create( english_sentence: "A beer, please." )
sentences = Sentence.create( english_sentence: "Two beers, please." )
sentences = Sentence.create( english_sentence: "Could I get the bill, please." )
sentences = Sentence.create( english_sentence: "I'm allergic to" )
sentences = Sentence.create( english_sentence: "That was delicious!" )
sentences = Sentence.create( english_sentence: "This isn't what I ordered." )
sentences = Sentence.create( english_sentence: "Can I buy you a drink?" )
sentences = Sentence.create( english_sentence: "Let's have another!" )

sentences = Sentence.create( english_sentence: "Directions" )
sentences = Sentence.create( english_sentence: "How do I get to?" )
sentences = Sentence.create( english_sentence: "It's on the left." )
sentences = Sentence.create( english_sentence: "It's on the right." )
sentences = Sentence.create( english_sentence: "It's straight ahead." )
sentences = Sentence.create( english_sentence: "How far is?" )
sentences = Sentence.create( english_sentence: "Where is the closest bank?" )
sentences = Sentence.create( english_sentence: "Where can I find tourist information?" )
sentences = Sentence.create( english_sentence: "Do you have a map?" )
sentences = Sentence.create( english_sentence: "Can you show me that on the map?" )
sentences = Sentence.create( english_sentence: "Where is the embassy?" )

sentences = Sentence.create( english_sentence: "Sightseeing" )
sentences = Sentence.create( english_sentence: "What is the entrance fee?" )
sentences = Sentence.create( english_sentence: "What is that building?" )
sentences = Sentence.create( english_sentence: "What's on at the cinema tonight?" )
sentences = Sentence.create( english_sentence: "That's a beautiful church." )
sentences = Sentence.create( english_sentence: "What is there to see around here?" )

sentences = Sentence.create( english_sentence: "Accommodations" )
sentences = Sentence.create( english_sentence: "I have a reservation." )
sentences = Sentence.create( english_sentence: "Do you have any single rooms available?" )
sentences = Sentence.create( english_sentence: "Could I see the room?" )
sentences = Sentence.create( english_sentence: "I'd like to stay for nights." )
sentences = Sentence.create( english_sentence: "Is breakfast included?" )
sentences = Sentence.create( english_sentence: "The wifi in my room doesn't work." )
sentences = Sentence.create( english_sentence: "Could I get a different room?" )
sentences = Sentence.create( english_sentence: "Is there a restaurant here?" )

sentences = Sentence.create( english_sentence: "Health and Emergencies" )
sentences = Sentence.create( english_sentence: "Help!" )
sentences = Sentence.create( english_sentence: "I need a doctor." )
sentences = Sentence.create( english_sentence: "Is there a pharmacy nearby?" )
sentences = Sentence.create( english_sentence: "Can I use your phone?" )
sentences = Sentence.create( english_sentence: "Call the police!" )
sentences = Sentence.create( english_sentence: "Leave me alone!" )

=end
