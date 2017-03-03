#gem install yelp
require_relative 'yelp'
require 'yelp'

client = Yelp::Client.new({ consumer_key: "2pm0e_hmLDFRe-nikc-SEQ",
                            consumer_secret: "2Q2ihT6vOj7WeRGiPZIuW3UKtSo",
                            token: "LXsOwK1evCVJdXBoLcStVs0-NSaiTWQx",
                            token_secret: "SJjxY1eVvrUNY6psfOoOIV6SFIg"
                          })


if ARGV.any?
  command = ARGV[0]
  if ARGV[1].nil?
    p "Not valid command"
  elsif ARGV.include?("in") == false
    p "Invalid parameters"
  else
    find = ARGV.find_index("in")
    string = ARGV[1...find].join(" ")
    location = ARGV[find+1..-1].join(" ")
    case command
    when "search"
      then search(string, location, client)
    when "best"
      then search(string, location, client)
    when "closest"
      then closest(string, location, client)
    else
      p "command #{command} not recognized"
    end

  end

end
