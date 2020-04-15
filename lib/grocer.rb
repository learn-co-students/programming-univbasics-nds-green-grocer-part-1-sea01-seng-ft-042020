require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_info|
    if name == item_info[:item]
      return item_info
    end
  end
    collection.each do |item_info, stats|
    if name != item_info[:item]
      return stats
    end
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  cart.each do |item_info|
    item_info[:count] = cart.count(item_info)
  end
  new_cart = cart.uniq
  new_cart
end


  