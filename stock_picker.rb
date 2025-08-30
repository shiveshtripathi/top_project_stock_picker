
def stock_picker(array_of_stock_prices)
  store_stock_price_difference = {}
  length_of_array_of_stock_prices = array_of_stock_prices.length

  #To generate a hash to store the difference of sell and buy price of stock  as value in hash
  #Key of hash containing the index of stocks in the array which are sold and bought
  for bought_stock_index in 0..length_of_array_of_stock_prices - 2
    for sold_stock_index in bought_stock_index + 1..length_of_array_of_stock_prices - 1
      profit_or_loss = array_of_stock_prices[sold_stock_index] - array_of_stock_prices[bought_stock_index]
      generated_key = generate_key(bought_stock_index, sold_stock_index)
      store_stock_price_difference[generated_key] = profit_or_loss
    end
  end
  profitable_trade = get_profitable_trade(store_stock_price_difference)
  puts "#{profitable_trade} \# for a profit of $#{array_of_stock_prices[profitable_trade[1]]} - $#{array_of_stock_prices[profitable_trade[0]]} = $#{array_of_stock_prices[profitable_trade[1]] - array_of_stock_prices[profitable_trade[0]]}"
end


#To generate a symbol based on index of sold and bought stock to store in hash
def generate_key (bought_stock_index, sold_stock_index)
  return (sold_stock_index.to_s + "-" + bought_stock_index.to_s).to_sym
end


#To get the most profitable trade from the entered hash
def get_profitable_trade(store_stock_price_difference)
    profitable_trade = []
    best_trade_pair = store_stock_price_difference.max { |trade1, trade2| trade1[1] <=> trade2[1]}
    extract_index_from_key = best_trade_pair[0].to_s.partition("-")
    profitable_trade[0] = extract_index_from_key[2].to_i
    profitable_trade[1] = extract_index_from_key[0].to_i
    return profitable_trade
end



stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([7, 12, 18, 1, 15, 3, 10])
stock_picker([13, 2, 19, 14, 5, 8])
stock_picker([1, 6, 9, 2, 17, 4, 11, 15, 7, 18])
stock_picker([10, 5, 12, 4, 16])
stock_picker([19, 2, 11, 6, 17, 8, 13])
stock_picker([14, 1, 15, 10, 3, 7])
stock_picker([20, 18, 1, 16, 9, 2])
stock_picker([3, 11, 4, 19, 6, 12, 1, 15, 8, 10])
stock_picker([5, 1, 14, 8, 20, 3, 11, 16])
stock_picker([9, 13, 2, 18, 10, 4, 17])