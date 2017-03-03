require 'yelp'
class Client
  attr_reader :client
  def initialize
    @client = Yelp::Client.new({ consumer_key: "2pm0e_hmLDFRe-nikc-SEQ",
                            consumer_secret: "2Q2ihT6vOj7WeRGiPZIuW3UKtSo",
                            token: "LXsOwK1evCVJdXBoLcStVs0-NSaiTWQx",
                            token_secret: "SJjxY1eVvrUNY6psfOoOIV6SFIg"
                          })
  end

end
