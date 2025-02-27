# simple random sample
sample(24:69, 6)
sample(1:2, 10, replace = TRUE, prob = c(0.1, 0.9))

# binomial sample
prob <- dbinom(1:4, 5, 0.5)
data.frame(val = 1:4, prob = prob)

# poisson sample
prob <- dpois(0:4, 5 * 0.3)
data.frame(val = 1:5, prob = prob)

# normal sample
prob <- dnorm(0:5, 2.5, 1)
data.frame(val = 0:5, prob = prob)
