require 'yelp'
require 'pry'


def search(string, location, client)
  params = { term: string, limit: 4, sort:0}
  response = client.search(location, params).businesses
  response.each do |restaurant|
    print_restaurant(restaurant)
  end
end

def best(string, location, client)
  params = { term: string, limit: 4, sort:2}
  response = client.search(location, params).businesses
  response.each do |restaurant|
    print_restaurant(restaurant)
  end
end

def closest(string, location, client)
  params = { term: string, limit: 4, sort:1}
  response = client.search(location, params).businesses
  response.each do |restaurant|
    print_restaurant(restaurant)
  end
end


# def print_restaurant(restaurant)
#     puts restaurant.name
#     puts restaurant.location.display_address
#     half_star = restaurant.rating-restaurant.rating.to_i==0.5
#     print_star = ""
#     if half_star
#       print_star = "½"
#     end
#     puts "#{'⭐ '*restaurant.rating.to_i} #{print_star}"
#     puts "\n"
# end

