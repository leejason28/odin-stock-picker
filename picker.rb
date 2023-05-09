def stock_picker(stocks)
  max_profit_days = []
  stocks.each_with_index do |stock, day|
    max_profit_days.push(day + stocks[day,stocks.length].index(stocks[day,stocks.length].max))
  end
  max_profits = []
  max_profit_days.each_with_index do |profit, day|
    max_profits.push(stocks[profit]-stocks[day])
  end
  [max_profits.index(max_profits.max), max_profit_days[max_profits.index(max_profits.max)]]
end

# map each stock to the day when selling it provides max profits
# stocks = [17,3,6,9,15,8,6,1,10]
# p stock_picker(stocks)