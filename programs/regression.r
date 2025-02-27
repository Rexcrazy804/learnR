x <- 50:60
y <- 60:70

plot(x, y, main = "y on x")
fit <- lm(y ~ x)
fit
# Coefficients:
# (Intercept)            x
#          10            1
# therefore y = 10 + 1*x

lm(formula = x ~ y)

abline(fit)

plot(y, x, main = "x on y")
fit <- lm(x ~ y)
fit

# Coefficients:
# (Intercept)            y
#         -10            1
# therfore x = -10 + 1*y

abline(fit)

# now we may use the above equations to get values of x or y at any point of y
# or x
