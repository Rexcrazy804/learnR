# karl pearson's correlation coefficient
x <- sample(1:10, 5)
y <- x * 2

cor(x, y)
# spearman rank correlation when rank is given
cor(x, y, method = "spearman")
# when data is given
x_rank <- rank(x)
y_rank <- rank(y)
cor(x_rank, y_rank, method = "spearman")
# with scatter plot
plot(x_rank, y_rank)
