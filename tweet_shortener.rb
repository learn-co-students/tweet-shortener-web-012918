def dictionary
  list = {"hello" => "hi", "to" => "2", "two" =>"2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&", "For" =>"4"}
end

def word_substituter (tweet)
  list = dictionary
  i=0
  arr = tweet.split
  while i<arr.length
    list.each {|key, value|
      if arr[i] == key
        arr[i] = value
      end}
        i+=1
  end
      tweet = arr.join(" ")
end

def bulk_tweet_shortener (tweet_arr)

  tweet_arr.each{|tweet| puts word_substituter(tweet)}

end 

def selective_tweet_shortener(tweet)

  if tweet.length > 140
   word_substituter(tweet) 
    
  else
    tweet
 
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      short_tweet = short_tweet.slice(0..136) + "..."
    else
      short_tweet
    end
  else
    tweet
  end
end 
