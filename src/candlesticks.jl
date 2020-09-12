function doji(ohlc::TimeArray; width = .01, o = :Open, h = :High, l = :Low, c = :Close)
  res = @. abs((ohlc[o] - ohlc[c])) / (ohlc[h] - ohlc[l]) < width
  TimeArray(timestamp(res), values(res), [:doji], meta(ohlc))
end

function hammer(x)
  #code here
end

function inverted_hammer(x)
  #code here
end

function hanging_man(x)
  #code here
end

function mirabosu(x)
  #code here
end

function shooting_star(x)
  #code here
end

function spinning_top(x)
  #code here
end

function three_white_soldiers(x)
  #code here
end

function three_black_crows(x)
  #code here
end

function morning_star(x)
  #code here
end
