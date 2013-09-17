class Word < ActiveRecord::Base
  
  def anagrams
    Word.where(:sorted_word => self[:sorted_word])
  end

end
