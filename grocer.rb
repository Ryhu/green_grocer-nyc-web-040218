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
  coupons.each do |coup|
    # exists?
    if cart.has_key?(coup[:item])
      #has enough for one coup?
      if cart[coup[:item]][:count] == coup[:num]
        new_name = "#{coup[:item]} W/COUPON"
        #if coup already exists
        if !cart.has_key?(new_name)
          cart[new_name] = Hash[:price, coup[:cost],
                                  :clearance, true, 
                                  :count, 1 ]
        else
          cart[new_name][:count] += 1
        end
          
        
      end
    end
  end
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
