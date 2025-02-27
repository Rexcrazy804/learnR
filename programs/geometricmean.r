print("RAW DATA::::::::")
data <- c(2, 3, 1, 3, 4, 1, 2)
logmean <- mean(log10(data))
geomean <- 10 ^ logmean

print(paste("GM = ", round(geomean, digits = 3)))

print("FREQUENCY DATA::::::::")
data <- data.frame(
  age = c(10:15),
  freq = c(10, 9, 8, 11, 8, 5)
)
logmean <- sum(data$freq * log10(data$age)) / sum(data$freq)
geomean <- 10 ^ logmean
print(paste("GM = ", round(geomean, digits = 3)))

print("GROUPED DATA::::::::")
data <- data.frame(
  midx = seq(2, 11, by = 3),
  freq = c(8, 16, 15, 3)
)

logmean <- sum(data$freq * log10(data$midx)) / sum(data$freq)
geomean <- 10 ^ logmean
print(paste("GM = ", round(geomean, digits = 3)))
