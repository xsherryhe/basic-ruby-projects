#A method that takes in an array of stock prices, one for each day, 
#and returns an array with a pair of days representing the best day to buy and the best day to sell
def stock_picker(prices)
  max_profits = prices.map.with_index do |buy_price, buy_day|
    max_profit = prices[buy_day + 1..-1].reduce(-buy_price) {|max, sell_price| [max, sell_price - buy_price].max}
    [buy_day, prices.index(max_profit + buy_price), max_profit]
  end
  max_profits.max {|a, b| a.last <=> b.last}.first(2)
end