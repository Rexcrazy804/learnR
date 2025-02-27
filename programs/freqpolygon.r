axis.x <- c(min(hist.articles$breaks), hist.articles$mids, max(hist.articles$breaks))
axis.y <- c(0, hist.articles$count, 0)

lines(axis.x, axis.y, type="l")
