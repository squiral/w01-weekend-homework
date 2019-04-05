
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
