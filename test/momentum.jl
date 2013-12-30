module TestMomentum
  
  using Base.Test
  using Series
  using Datetime
  using MarketTechnicals

  op  = readseries(Pkg.dir("MarketTechnicals/test/data/spx.csv"), value=2)
  hi  = readseries(Pkg.dir("MarketTechnicals/test/data/spx.csv"), value=3)
  lo  = readseries(Pkg.dir("MarketTechnicals/test/data/spx.csv"), value=4)
  cl  = readseries(Pkg.dir("MarketTechnicals/test/data/spx.csv"), value=5)
  
  # rsi 
  rsisa = rsi(cl)
  
  @test_approx_eq 73.80060302291837 rsisa[end].value
  
  # rsi method = wilder 
  rsw = rsi(cl, method="wilder")
  
  @test_approx_eq 72.15153048735719 rsw[end].value # from TTR 1971-12-31 72.151530
  
  # macd
  macsa = macd(sa)
  
  @test_approx_eq 1.8694463607370295 macsa[end].value  # TTR value with percent=FALSE is 1.900959 
  @test_approx_eq 1.7189453474752991 macsa[end].value  # TTR value with percent=FALSE is 1.736186
  
  # cci 
  ccisa = cci(sa)
  
  @test_approx_eq -146.17060449635804 ccisa[end].value  # TTR::CCI value is -175.8644
end



