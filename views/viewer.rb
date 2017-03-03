module Viewer

  def self.print_restaurant(restaurant)
      puts restaurant.name
      puts restaurant.location.display_address
      half_star = restaurant.rating-restaurant.rating.to_i==0.5
      print_star = ""
      if half_star
        print_star = "½"
      end
      puts "#{'⭐ '*restaurant.rating.to_i} #{print_star}"
      puts "\n"
  end

end
