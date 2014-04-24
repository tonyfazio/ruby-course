
class CarStats
  @@cars_per_color= Hash.new
  @@most_popular_color= nil
  @@least_popular_color = nil

  def self.calc_top_color(cars)
    cars.each do |x|
      if @@cars_per_color.include?(x.color)
        @@cars_per_color[x.color]+=1
      else
        @@cars_per_color[x.color] = 1
      end
    end
    popular= @@cars_per_color.max_by {|x,y| y}
    @@most_popular_color= popular[0]
    @@most_popular_color
  end

  def self.calc_bottom_color(cars)
    lame = @@cars_per_color.min_by {|x,y| y}
    @@least_popular_color = lame[0]
    @@least_popular_color
  end
end



