get '/' do
  # if params[:search]
  #  word = Word.new(:word => params[:search], :sorted_word => params[:search].strip.downcase.split(//).sort.join)
  #  @anagrams = word.anagrams
  # end
  
  erb :index
end


get '/:word' do
  if params[:word]
   word = Word.new(:word => params[:word], :sorted_word => params[:word].strip.downcase.split(//).sort.join)
   @anagrams = word.anagrams
  end
  erb :index
end

post '/anagrams' do
  redirect to "/#{params[:user_input]}"
end
