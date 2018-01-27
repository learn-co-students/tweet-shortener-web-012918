
def dictionary
  words_to_be_substituted = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter string
  holder_array = string.split(" ")
  holder_array.collect do |word|
    if dictionary.keys.include? word.downcase
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener array
 array.collect do |element|
    puts word_substituter element
  end
end

def selective_tweet_shortener string
  method = if string.length > 140
    word_substituter string
  else
    string
  end
  method
end

def shortened_tweet_truncator tweet
  shortened_tweet = word_substituter tweet
  if shortened_tweet.length > 140
  shortened_tweet[0..136] + "..."
else
  shortened_tweet
end
end
