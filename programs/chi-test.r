# QUESTION
# from the following table having certain
# characterisitics. test the hyptohess that the color of a flower
# is independent of the type of its leaves
# FLOWER\LEAF FLAT  CURVED
# WHITE       99    36
# RED         20    5

row_names <- c("WHITE", "RED")
col_names <- c("FLAT", "CURVED")
data <- matrix(
  c(99, 36, 20, 5),
  nrow = 2,
  byrow = TRUE,
  dimnames = list(row_names, col_names)
)
data
chisq.test(data)

# OUTPUT
#       FLAT CURVED
# WHITE   99     36
# RED     20      5
# X-squared = 0.20429, df = 1, p-value = 0.6513

# CONCLUSION
# p value is greater than 0.05 hence the null hypothesis is accepted
# therefore the color of the flower and the type of leaves are independent

# QUESTION
# Test the independence of A & B using chi square
#     A1  A2
# B1  7   1
# B2  6   8

row_names <- c("B1", "B2")
col_names <- c("A1", "A2")
data <- matrix(
  c(7, 1, 6, 8),
  nrow = 2,
  byrow = TRUE,
  dimnames = list(row_names, col_names)
)
data
chisq.test(data)

# OUTPUT
#    A1 A2
# B1  7  1
# B2  6  8
# X-squared = 2.5536, df = 1, p-value = 0.11

# CONCLUSION
# p value is greater than 0.05 hence the null hypothesis is accepted
# therefore A & B are independent
