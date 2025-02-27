# rawdata
print("RAW DATA::::::::")
data <- c(12, 2, 3, 1, 3, 4, 1, 2, 3, 3, 10, 12, 1, 7, 4, 8, 9, 10)
data_mean <- mean(data)
data_median <- median(data)

data_unique <- unique(data)
data_table <- table(data)
data_mode <- data_unique[data_table == max(data_table)]

print(paste("mean", round(data_mean, digits = 3)))
print(paste("mode", data_mode))
print(paste("median", data_median))

# Frequency Data
print("FREQUENCY DATA::::::::")
data <- data.frame(
  ages = c(18:30),
  freq = c(18, 12, 19, 19, 28, 38, 28, 10, 10, 8, 11, 5, 8)
)

data_mean <- sum(data$ages * data$freq) / sum(data$freq)
data_mode <- data$ages[data$freq == max(data$freq)]
data_median <- median(rep(data$age, data$freq))

print(paste("mean", round(data_mean, digits = 3)))
print(paste("mode", data_mode))
print(paste("median", data_median))
