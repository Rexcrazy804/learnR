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
