# Write your code here.
def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  key_array = dictionary.keys
  new_array = []

  tweet_array.each do |word|
    key_array.each do |key|
      if word.downcase == key
        word = dictionary[key]
      else
      end
    end
    new_array << word
  end
  tweet = new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
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
  if tweet.length > 140 && word_substituter(tweet).length > 140
    tweet = word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
