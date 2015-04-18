class StaticPagesController < ApplicationController
  def home
    
    @sentence = Sentence.all
    
    @GermanSentenceMarquee = []
    @GermanPhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence| 
      @GermanSentenceMarquee << sentence.GermanSentence; 
      @GermanPhoneticMarquee << sentence.GermanPhonetic; 
      @EnglishSentenceMarquee << sentence.EnglishSentence 
    end

  end
end

=begin

    #Declare an instance variable.
    #Create an array with all the relevant column heads.
    #loop through and Measure the length of every string in a line. 
    #Find sentence with the greatest length.
    #Add spaces before and after smaller sentences so that their length increases to that of the longest sentence.
    #Add all the new instances of the sentences into the same position in an arrray.


    
    RelaventColumns = [GermanSentence, GermanPhonetic, EnglishSentence] 
    
    RelaventColumns do |s| 
      s.length
      s = RelaventColumnsLength(s-1)
    end
    
    RelaventColumnsLength.greatest = GreatestLength
      
    for each |s| in RelaventColumns do
      if s.length < GreatestLength
        GreatestLength - s.length = sDifference
          if sDifference.even? = true
            "Add half to the start and half to the end"
          elsif sDifference.even? = false
            "Add sDifference/2 + 0.5 to start and sDifference/2 - 0.5 to the end"
          end
        s = RelevantColumn[x]
      else
        s = RelevantColumn[x]
    end
=end 