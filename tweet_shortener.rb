dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
  arr_of_words = tweet.split
  i = 0
  while i < arr_of_words.length
    cur_elem = arr_of_words[i]
    if dictionary.keys.include?(cur_elem)
      match = dictionary[arr_of_words[i]]
      arr_of_words[i] = match
    end
    i += 1
  end
  arr_of_words.join(" ")
end

def bulk_tweet_shortener(tweetarr)
  tweetarr.each do |index|
    puts word_substituter(index)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  cur_twt = word_substituter(tweet)
  if cur_twt.length > 140
    short_twt = cur_twt[0...137] + "..."
  else
    cur_twt
  end
end
