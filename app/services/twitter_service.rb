class TwitterService
  attr_reader :client, :user

  #is there a better way by separating this into its own private method for client

  def initialize(user)
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_KEY"]
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = user.token
      config.access_token_secret = user.secret
    end
    @user = user
  end


  private

    # def sentiment
    #   @sentiment ||= AlchemyAPI.new()
    # end
end
