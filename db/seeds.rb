# read the dictionary file in and 
# create one entry in the words table per word in the file.
file = File.open('words.txt')

file.each do |word|
  Word.create(:word => word.chomp, :sorted_word => word.chomp.strip.downcase.split(//).sort.join)
end
