# Write your code here.
def word_substituter(sentence)
  words = sentence.split(" ")
  array = []

  words.each do |word|
    case word.downcase
    when "hello"
      array.push("hi")
    when "to", "two", "too"
      array.push("2")
    when "for", "four" 
      array.push("4")
    when "be" 
      array.push("b")
    when "you" 
      array.push("u")
    when "at" 
      array.push("@") 
    when "and" 
      array.push("&")
    else
      array.push(word)
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
	array.each do |sentence|
		puts word_substituter(sentence)
	end
end

def selective_tweet_shortener(tweet)
	tweet.length < 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
	shortened = selective_tweet_shortener(tweet)

	shortened.length > 140 ? shortened[0..136] + '...' : shortened
end