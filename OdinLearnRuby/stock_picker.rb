def stock_picker (prices)

  best_buy = nil
  best_sell = nil
  max_profit = 0

  (0..(prices.length - 2)).each do |buy_date|
    ((buy_date + 1).. prices.length - 1).each do |sell_date|

      price_difference = prices[sell_date] - prices[buy_date]

      if price_difference > max_profit
        best_buy = buy_date
        best_sell = sell_date
        max_profit = price_difference
      end
    end
  end

  puts "Day #{best_buy}: buy at #{prices[best_buy]}"
  puts "Day #{best_sell}: sell at #{prices[best_sell]}"
  puts "Profit of #{max_profit}"

  #return [best_buy, best_sell]
end


stock_picker([17,3,6,9,15,8,6,1,10])
