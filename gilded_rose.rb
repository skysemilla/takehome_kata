class Main 
  def update_items(items)
    items.each do |item|
      if item.name == "Aged Brie"
        aged_brie = AgedBrieItems.new
        aged_brie.update_quality(item)
        aged_brie.update_sellin(item)
      elsif item.name == "Sulfuras, Hand of Ragnaros"
        sulfuras = SulfurasItems.new
        sulfuras.update_quality(item)
        sulfuras.update_sellin(item)
      elsif item.name == "Backstage passes to a TAFKAL80ETC concert"
        backstage = BackstageItems.new
        backstage.update_quality(item)
        backstage.update_sellin(item)
      elsif item.name == "Conjured Mana Cake"
        conjured = ConjuredItems.new
        conjured.update_quality(item)
        conjured.update_sellin(item)
      else 
        common = CommonItems.new
        common.update_quality(item)
        common.update_sellin(item)
    end
  end
end
class CommonItems
  # def initialize(item)
  # end

  def update_quality(item)
    if item.quality > 0 && item.sellin <= 0 
      return item.quality -= 2
    elsif item.quality > 0 && item.sellin > 0 
      return item.quality -=1
    elsif item.quality = 0
      return item.quality ##already the lowest value
    # elsif item.quality <=50 ##di pa siya lalampas ng 50 because decrease lang nang decrease
    #   item.quality
    end
  end
  def update_sellin(item)
     return item.sellin -= 1
  end
end

class AgedBrieItems < CommonItems
  def update_quality(item)
    if item.quality < 50
      return item.quality +=1 
    else 
      return item.quality 
    end
  end
 
end

class SulfurasItems < CommonItems
  def update_quality(item)
    return item.quality 
    end
  end
  def update_sellin(item)
    return item.sellin
  end
end

class BackstageItems < CommonItems
  def update_quality(item)
    if item.quality = 50
      return item.quality
    elsif item.sellin <= 10 && item.sellin > 5
      return item.quality =+ 2
    elsif item.sellin <= 5 && item.sellin > 0
      return item.quality =+ 3
    elsif item.sellin = 0
      return item.quality == 0
    end
  end
end

class ConjuredItems < CommonItems
  def update_quality
    if item.quality > 0 && item.sellin <= 0 
      return item.quality -= 4
    elsif item.quality > 0 && item.sellin > 0 
      return item.quality -= 2
    elsif item.quality = 0
      return item.quality ##already the lowest value
    end
  end

end

##declare Main
main = Main.new
main.update_items(Items)
# DO NOT CHANGE THINGS BELOW -----------------------------------------

Item = Struct.new(:name, :sell_in, :quality)

# We use the setup in the spec rather than the following for testing.
#
# Items = [
#   Item.new("+5 Dexterity Vest", 10, 20),
#   Item.new("Aged Brie", 2, 0),
#   Item.new("Elixir of the Mongoose", 5, 7),
#   Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
#   Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
#   Item.new("Conjured Mana Cake", 3, 6),
# ]