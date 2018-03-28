def consolidate_cart(cart)
  result = {}
  cart.each do |cart_item|
    cart_item.each do |item_name, item_des|
      if !result.has_key?(item_name)
        result[item_name] = item_des
        result[item_name][:count] = 1
      else
        result[item_name][:count] += 1
      end
    end
  end
  return result
end

def apply_coupons(cart, coupons)
  result = cart
  coupons.each do |coup|
    if result.has_key?(coup[:item])
      if result[coup[:item]][:count] == coup[:count]
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
