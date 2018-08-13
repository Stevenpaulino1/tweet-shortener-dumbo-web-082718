def dictionary 
hash = {
    "Hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
}
end  

def word_substituter (string)
  array = string.split(" ")
  array.each_with_index do |words,index|
    dictionary.keys.each do |x|
      if x == words 
      array[index] = dictionary[x]
      end
      end
      end
array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
if tweet.length > 140
  word_substituter(tweet)
else 
 tweet
end
end

def shortened_tweet_truncator (tweet)
   if tweet.length > 140
   tweet =  word_substituter(tweet)
   tweet[0..136] + "..."
  else
   tweet
  end
  end 
  