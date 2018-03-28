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
    # exists?
    if result.has_key?(coup[:item])
      #has enough for one coup?
      if result[coup[:item]][:count] == coup[:count]
        new_name = "#{coup[:item]} W/COUPON"
        #if coup already exists
        if !result.has_key?(new_name)
          result[new_name] = Hash[:price, coup[:cost],
                                  :clearance, true, 
                                  :count, 1 ]
        else
          result[new_name][:count] += 1
        end
          
        
      end
    end
  end
  return result
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
