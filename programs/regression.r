x <- 50:60
y <- 60:70

plot(x, y, main = "y on x")
abline(lm(y ~ x))

plot(y, x, main = "x on y")
abline(lm(x ~ y))
