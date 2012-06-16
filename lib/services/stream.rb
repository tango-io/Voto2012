twitter_config = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]


ts = TwitterStream.new(
  :consumer_token  => twitter_config['consumer_key'],
  :consumer_secret => twitter_config['consumer_secret'],
  :access_token    => twitter_config['oauth_token'],
  :access_secret   => twitter_config['oauth_token_secret']
)

ts.sample do |status|
  user = status['user']
  puts "#{user['screen_name']}: #{status['text']}"
end

ts.track(['bit','ly']) do |status| # or ts.track("bit,ly")
  user = status['user']
  puts "#{user['screen_name']}: #{status['text']}"
end

ts.follow([5161091,66137185]) do |status| # or ts.track("5161091,66137185") or ts.track(["5161091",66137185])
  user = status['user']
  puts "#{user['screen_name']}: #{status['text']}"
end
