library(ggplot2)
set.seed(14012021)
articles <- rnorm(200, mean = 4)
ggplot(data.frame(x = articles), aes(x)) +
  geom_histogram(aes(y = after_stat(density)), binwidth = 0.5, fill="pink", color="black") +
  geom_density(adjust=1, color = "black") +
  labs(title="Frequency Curve", x = "Value", y = "bob")
