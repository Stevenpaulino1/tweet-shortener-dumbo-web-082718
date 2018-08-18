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

def word_substituter(string)
  array = []
  string.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      array << word
    else
      array << word
    end
  end
  array.join(" ")
end


def bulk_tweet_shortener(array)
  array.each {|x| puts word_substituter (x)}
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
  