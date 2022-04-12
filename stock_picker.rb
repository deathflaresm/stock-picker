def stock_picker(stocks)
  best_pick = [0,0]
  # best_pick[0] = stocks.select {|num| num == stocks.max}
  # best_pick[1] = stocks.select {|num| num == stocks.min}

  dif = Array.new(stocks.length) {Array.new(stocks.length)}
  for i in 0..stocks.length-1
    for j in 0..stocks.length-1
      if i < j
        dif[i][j] = stocks[j] - stocks[i]
        if dif[i][j] > dif[best_pick[0]][best_pick[1]]
          best_pick[0] = i
          best_pick[1] = j
        end
      else
        dif[i][j] = 0
      end
    end
  end
  print best_pick
end

stock_picker([17,3,6,9,15,8,6,1,10])