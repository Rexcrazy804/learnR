# QUESTION
# the following observations came from a normal population
# 47, 49, 63, 45, 53
# test whether the mean is 55
raw <- c(47, 49, 63, 45, 53)
t.test(raw, mu = 55)

# OUTPUT
# data:  raw
# t = -1.1294, df = 4, p-value = 0.3219
# alternative hypothesis: true mean is not equal to 55

# CONCLUSION
# P is greater than 0.05 hence we may accept h0

# QUESTION
# 12 rats were given a high protein diet and another set of rats were given a
# low protein diet. The gain in weight (in g) observed are:
# High Protein: 13 14 10 11 12 16 10 8 11 12 9 12
# Low Protein: 2 11 10 8 10 13 9
# Determine whether the High protein diet is significant

m1_raw <- c(13, 14, 10, 11, 12, 16, 10, 8, 11, 12, 9, 12)
m2_raw <- c(2, 11, 10, 8, 10, 13, 9)

t.test(m1_raw, m2_raw, mu = 0, alternative = "greater", var.equal = TRUE)

# OUTPUT
# data:  m1_raw and m2_raw
# t = 1.9385, df = 17, p-value = 0.03467
# alternative hypothesis: true difference in means is greater than 0

# CONCLUSION
# The value of P is less than 0.05 hence the null hypthosis is rejected

# QUESTION
# To test the efficiency of sleeping pills, the time in minutes until falling
# asleep is observed for each patient. Days later, some of the patients are
# given a sleeping pill and the measurement
# is taken again:
# No Pill: 65 35 80 40 50
# PILL: 45 14 61 31 20

no_pill <- c(65, 35, 80, 40, 50)
pill <- c(45, 14, 61, 31, 20)
t.test(
  pill,
  no_pill,
  alternative = "less",
  mu = 0,
  var.equal = TRUE,
  paired = TRUE
)

# OUTPUT
# data:  pill and no_pill
# t = -5.9323, df = 4, p-value = 0.002024
# alternative hypothesis: true mean difference is less than 0

# CONCLUSION
# The value of P is significantly smaller than 0.05 therefore we reject the
# null hypothesis hence the sleeping pills are effective
