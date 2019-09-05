def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ").map { |word| dictionary[word.downcase] || word }
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  meet_condition_or_return_default(tweet.length > 140, word_substituter(tweet), tweet)
end

def shortened_tweet_truncator(tweet)
  abbreviated_tweet = word_substituter(tweet)
  meet_condition_or_return_default(abbreviated_tweet.length > 140, abbreviated_tweet[0..136] + "...", abbreviated_tweet)
end

private def meet_condition_or_return_default(condition, manipulated_value, value)
  if condition
    return manipulated_value
  end

  value
end
