# Skroll Language App

This is the Skroll Language App for language acquisition.

Turn Array into a Hash with word count.

wf = Hash[words.group_by { |w| w }.map { |w, ws| [w, ws.length] }]

http://stackoverflow.com/questions/9480852/array-to-hash-words-count

Sort that hash by value (desending) and turn back into array.

wf = metrics.sort_by{ |k, v| v }.reverse

http://stackoverflow.com/questions/2540435/how-to-sort-a-ruby-hash-by-number-value