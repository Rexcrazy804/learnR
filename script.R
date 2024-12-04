# simple bar chart
sales <- data.frame (
                     year = 1996:2000,
                     sales = c(15.0, 25.0, 27.0, 28.0, 26.0)
                     )
barplot(sales$sales, xlab="year", ylab="sales", main="Annual Sales", names.arg = sales$year)

# for pie chart
pivalues <- c(32, 87, 65, 29)
pipercent <- round(100 * pivalues / sum(pivalues), 1)

pie(
    pivalues,
    labels=pipercent,
    col=rainbow(length(pivalues)),
    main="Some distrobution"
    )

pilabels <- c("India", "USA", "U.K", "OTHER")
legend(
       "topright",
       pilabels,
       cex=1.0,
       fill=rainbow(length(pivalues))
)

# histogram
articles <- c(19, 23, 11, 5, 16, 21, 14, 19, 27, 39, 31)
hist.articles <- hist(
     articles, 
     xlab="articles"
)

# frequency polygon
axis.x <- c(min(hist.articles$breaks), hist.articles$mids, max(hist.articles$breaks))
axis.y <- c(0, hist.articles$count, 0)

lines(axis.x, axis.y, type="l")

