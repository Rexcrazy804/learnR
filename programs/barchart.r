# simple bar chart
sales <- data.frame (
  year = 1996:2000,
  sales = c(15.0, 25.0, 27.0, 28.0, 26.0)
)
barplot(sales$sales, xlab="year", ylab="sales", main="Annual Sales", names.arg = sales$year)
