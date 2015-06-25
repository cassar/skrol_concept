module StaticPagesHelper
  # Translate word picking the closest in length to original English if multiple
  # entries returned.
  def pearson_phonetic_lookup(english_word)
    @english_word = english_word
    @pearson_hash = HTTParty.get("https://api.pearson.com/v2/dictionaries/ldoce5/entries?headword=#{@english_word}.").parsed_response
    if @pearson_hash['count'] == 0
      @phonetic_word = '###'
    elsif @pearson_hash['results'].count == 0
      if @pearson_hash['results']['pronunciations'].present? == true
        @phonetic_word = @pearson_hash['results']['pronunciations'][0]['ipa']
      else
        @phonetic_word = '**NoIpaPresent**'
      end
    else
      @pearson_results_count = @pearson_hash['results'].count
      @results_counter = 0
      @phonetic_word_array = []
      while @results_counter < @pearson_results_count
        if @pearson_hash['results'][@results_counter]['pronunciations'].present? == true
          @pearson_result = @pearson_hash['results'][@results_counter]['pronunciations'][0]['ipa']
          if  @pearson_result.length > 0 && @pearson_result.split.count > 1
            @result_sub_array = @pearson_result.split
            for element in @result_sub_array
              @phonetic_word_array <<  [(@english_word.length - element.length).abs, element]
            end
          end
          @phonetic_word_array << [(@english_word.length - @pearson_result.length).abs, @pearson_result]
        end
        @results_counter += 1
      end
      if @phonetic_word_array.count == 0
        @phonetic_word = '**NoIpaPresent**'
      else
        @phonetic_word = @phonetic_word_array.sort[0][1]
      end
    end
    if @phonetic_word.split.count > 1
      @phonetic_word = @phonetic_word.split[0][0, (@phonetic_word.length - 1)]
    end
    @phonetic_word
  end
  # Translate stand alone sentence in to Phonetic Alphabet
  def phonetic_sentence_translate(english_sentence)
    @english_sentence_array = english_sentence.split
    @english_phonetic_sentence = []
    for element in @english_sentence_array
      @english_phonetic_sentence << pearson_phonetic_lookup(element.gsub(/(\W|\d)/, ''))
    end
    @english_phonetic_sentence.join(' ')
  end
end
