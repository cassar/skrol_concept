module StaticPagesHelper
  
  #Translate word picking the closest in length to original English if multiple entries returned.
  
  def PearsonPhoneticLookup(english_word)
    @englishWord = english_word
    @PearsonHash = HTTParty.get("https://api.pearson.com/v2/dictionaries/ldoce5/entries?headword=#{@englishWord}.").parsed_response
    
    if @PearsonHash["count"] == 0
      @phoneticWord = "###"
      
    elsif @PearsonHash["results"].count == 0
      if @PearsonHash["results"]["pronunciations"].present? == true
        @phoneticWord = @PearsonHash["results"]["pronunciations"][0]["ipa"] 
      else
        @phoneticWord = "**NoIpaPresent**"
      end  
        
    else 
      @PearsonResultsCount = @PearsonHash["results"].count
      @resultsCounter = 0
      @phoneticWordArray = []
      while @resultsCounter < @PearsonResultsCount
        if @PearsonHash["results"][@resultsCounter]["pronunciations"].present? == true
          @PearsonResult = @PearsonHash["results"][@resultsCounter]["pronunciations"][0]["ipa"]
          if  @PearsonResult.length > 0 && @PearsonResult.split.count > 1
             @resultSubArray = @PearsonResult.split
             for element in @resultSubArray
              @phoneticWordArray <<  [(@englishWord.length - element.length).abs, element]
             end
          end 
          @phoneticWordArray << [(@englishWord.length - @PearsonResult.length).abs, @PearsonResult]
        end
        @resultsCounter += 1
      end
      if @phoneticWordArray.count == 0
        @phoneticWord = "**NoIpaPresent**"
      else
        @phoneticWord = @phoneticWordArray.sort[0][1]
      end
    end
    
    if @phoneticWord.split.count > 1
      @phoneticWord = @phoneticWord.split[0][0, (@phoneticWord.length - 1)]
    end  
        
    return @phoneticWord
  end  
  
  #Translate stand alone sentence in to Phonetic Alphabet
  
  def PhoneticSentenceTranslate(english_sentence)
    @englishSentenceArray = english_sentence.split
    @englishPhoneticSentence = []
    for element in @englishSentenceArray
      @englishPhoneticSentence << PearsonPhoneticLookup(element.gsub(/(\W|\d)/, ""))
    end
    return @englishPhoneticSentence.join(" ")
  end
  
end
