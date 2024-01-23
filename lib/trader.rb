# def day_trader(price_array)
#   prix_achat = price_array.index(price_array.min)
#   prix_vente = price_array.index(price_array.max)
#   best_buy_sell=[prix_achat,prix_vente]
# end

def day_trader(price_array)
  max = 0
  for i in (0..price_array.length)
    for j in ((i+1)..price_array.length)
      if price_array[j].to_i - price_array[i].to_i > max
        max = price_array[j].to_i - price_array[i].to_i
        index_min = price_array.index(price_array[i])
        index_max = price_array.index(price_array[j])
      end
    end
  end
  return [index_min,index_max]
end

# puts day_trader([5,15,3]).inspect
   