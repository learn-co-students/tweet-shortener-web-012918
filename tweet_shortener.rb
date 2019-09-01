def dictionary
  word_substitutes = {
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
  word_substitutes
end

def word_substituter(tweet)
  dict = dictionary
  word_sub_keys = dict.keys
  tweet_array = tweet.split

  tweet_array.each do |tweet_word|
    word_sub_keys.each do |matcher|
      if tweet_word.downcase == matcher
        # puts "tweet_word: #{tweet_word}, replacer: #{dict[matcher]}"
        tweet_array[tweet_array.index(tweet_word)] = dict[matcher]
      end
    end
  end

  tweet_array.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    dict = dictionary
    word_sub_keys = dict.keys
    tweet_array = tweet.split

    tweet_array.each do |tweet_word|
      word_sub_keys.each do |matcher|
        if tweet_word.downcase == matcher
          tweet_array[tweet_array.index(tweet_word)] = dict[matcher]
        end
      end
    end

    tweet_array.join(' ')
  end
end

def shortened_tweet_truncator(tweet)
  tweet.length <= 140 ? tweet : tweet[0..136] + '...'
end
