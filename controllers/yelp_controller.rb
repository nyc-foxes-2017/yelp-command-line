module YelpController
include Viewer
  def self.search(string, location, client)
    params = { term: string, limit: 4, sort:0}
    response = client.search(location, params).businesses
    response.each do |restaurant|
      Viewer.print_restaurant(restaurant)
    end
  end

  def self.best(string, location, client)
    params = { term: string, limit: 4, sort:2}
    response = client.search(location, params).businesses
    response.each do |restaurant|
      Viewer.print_restaurant(restaurant)
    end
  end

  def self.closest(string, location, client)
    params = { term: string, limit: 4, sort:1}
    response = client.search(location, params).businesses
    response.each do |restaurant|
      Viewer.print_restaurant(restaurant)
    end
  end

end
