#A method that takes in an array of stock prices, one for each day, 
#and returns an array with a pair of days representing the best day to buy and the best day to sell
def stock_picker(prices)
  max_days_profits = prices.map.with_index do |buy_price, buy_day|
    sell_prices = prices[buy_day..-1]
    max_sell_price = sell_prices.max
    [buy_day, sell_prices.index(max_sell_price) + buy_day, max_sell_price - buy_price]
  end
  max_days_profits.max {|a, b| a.last <=> b.last}.first(2)
end