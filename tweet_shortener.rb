def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(string)
  array = string.split(" ")

  return_array = []
  array.map do |word|
    if dictionary.keys.include?(word.downcase)
      return_array << dictionary[word.downcase]
    else
      return_array << word
    end
  end

  return return_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet.length <= 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    new_tweet = word_substituter(tweet)
    return "#{new_tweet[0...136]} ..."
  end
end
