
def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount_to_add_or_remove)
  shop[:admin][:total_cash] += amount_to_add_or_remove
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, chosen_breed)

  breed_array = []

 for pet in shop[:pets]
   if pet[:breed] == chosen_breed
     breed_array.push(pet)
   end
 end

 return breed_array

end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
     if pet[:name] == name
       return pet
     end
   end

   return nil

end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
     if pet[:name] == name
       shop[:pets].delete(pet)
     end
   end

end


def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount_to_remove)
  return customer[:cash] -= amount_to_remove
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
   if customer_cash(customer) >= new_pet[:price]
     return true
   end

   return false

end

def sell_pet_to_customer(shop, pet, customer)
  if customer_can_afford_pet(customer, pet) == true
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(shop, pet[:price])
      increase_pets_sold(shop, 1)
      remove_pet_by_name(shop, pet)
      add_pet_to_customer(customer, pet)
    end
end
