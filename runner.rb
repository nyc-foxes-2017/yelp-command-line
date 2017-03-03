require_relative './models/client'
require_relative './views/viewer'
require_relative './controllers/yelp_controller'
require 'yelp'
include YelpController

client = Client.new.client

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
      then YelpController.search(string, location, client)
    when "best"
      then YelpController.search(string, location, client)
    when "closest"
      then YelpController.closest(string, location, client)
    else
      p "command #{command} not recognized"
    end

  end

end
