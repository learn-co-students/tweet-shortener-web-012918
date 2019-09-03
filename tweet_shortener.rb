# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  split_tweet = tweet.split(" ")
  dictionary = dictionary()

    substitute_tweet = split_tweet.collect do |string|
      if dictionary.keys.include? string
        string = dictionary[string]
      else
        string
      end
    end
  joined_tweet = substitute_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  # in array of tweets - iterates, shortens, puts
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0..136] + "..."
  else
    tweet
  end
end
