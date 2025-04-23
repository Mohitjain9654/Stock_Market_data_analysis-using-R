library(quantmod)
library(forecast)
library(tseries)

#stock_symbol <- "AAPL" 
#stock_symbol <- "MSFT" 
stock_symbol <- "META" 
#stock_symbol <- "GOOGL"
start_date <- "2010-01-01"
end_date <- Sys.Date()

stock_data <- getSymbols(stock_symbol, src = "yahoo", from = start_date, to = end_date, auto.assign = FALSE)

head(stock_data)

close_prices <- Cl(stock_data)

plot(index(close_prices), as.numeric(close_prices), type = "l", col = "blue", lwd = 2,
     xaxt = 'n', xlab = "Year", ylab = "Closing Price", main = paste("Closing Prices of", stock_symbol))
axis(1, at = seq(from = as.Date("2010-01-01"), to = Sys.Date(), by = "year"),
     labels = format(seq(from = as.Date("2010-01-01"), to = Sys.Date(), by = "year"), "%Y"))

plot(index(close_prices), as.numeric(close_prices), type = "l", col = "blue", lwd = 2,
     xaxt = 'n', xlab = "Month", ylab = "Closing Price", main = paste("Closing Prices of", stock_symbol))
axis(1, at = seq(from = as.Date("2010-01-01"), to = Sys.Date(), by = "month"),
     labels = format(seq(from = as.Date("2010-01-01"), to = Sys.Date(), by = "month"), "%b-%Y"))
