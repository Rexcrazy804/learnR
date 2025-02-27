# QUESTION 1
# H0: M == 60, H1: M != 60
x <- 65
m <- 60
sd <- 10
n <- 36

z <- (x - m) / (sd / sqrt(n))
p <- 2 * (1 - pnorm(abs(z)))
p

# Output
# [1] 0.002699796

# CONCLUSION

# QUESTION 2
# H0: M == 2000 H1: M > 2000

x <- 2200
m <- 2000
sd <- 300
n <- 50

z <- (x - m) / (sd / sqrt(n))
p <- pnorm(z)
p

# Output
# [1] 0.9999988

# CONCLUSION
# The value of p is greater than 0.05 hence the H0 is accepted
# therefore the sample is from a population of Mean 2000 and SD 300

# QUESTION 3
# Suppose the iq in a certain population is normally distributed with a mean of
# 100 and a standard deviation of 15. A scientist wants to know if a new
# medicine effects the IQ levels, so she recruits 20 patients to use it for one
# month and records their IQ levels at the end of the month
#
# 88 92 94 96 97 97 97 97 99 99 108 109 109 109 110 112 112 113 114 115

library(BSDA)
raw <- c(
  88, 92, 94, 96, 97, 97, 97, 97, 99, 99, 108,
  109, 109, 109, 110, 112, 112, 113, 114, 115
)
z.test(raw, mu = 100, sigma.x = 15)

# Output
# z = 0.99878, p-value = 0.3179
# alternative hypothesis: true mean is not equal to 100
# 95 percent confidence interval:
#   96.77608 109.92392
# sample estimates:
# mean of x
#    103.35

# CONCLUSION
# It is evident that the p value is greater than 0.05 hence we accept H0
# therefore there has been no effect on the population IQ, due to the medicine

# Question 4
# Suppose that 64 senior girls from collage A & 81 girls from college B have a
# mean height of 68.3 & 67.3 inches respectively if the standard deviation for
# heights of all senior girls is 2.43 is the difference between the two groups
# significant?

x1 <- rep(68.4, 64)
x2 <- rep(67.3, 81)

z.test(x1, x2, mu = 0, sigma.x = 2.43, sigma.y = 2.43)

# Output
# data:  x1 and x2
# z = 2.7067, p-value = 0.006796
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#  0.3034632 1.8965368
# sample estimates:
# mean of x mean of y
#      68.4      67.3

# It is evident that the p value is less than 0.05 hence we reject H0

# INCOMPLETE TWO SAMPLE Z TEST OTHER EXAMPLE
