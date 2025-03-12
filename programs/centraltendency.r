# make a function to avoid repetition
# why did I not think of this sooner
# fricking R dulling my programmer instincts :kekw:
print_cts <- function() {
  print(paste("mean", round(data_mean, digits = 2)))
  print(paste("mode", round(data_mode, digits = 2)))
  print(paste("median", round(data_median, digits = 2)))
}

print("RAW DATA::::::::")
data <- c(12, 2, 3, 1, 3, 4, 1, 2, 3, 3, 10, 12, 1, 7, 4, 8, 9, 10)
data_mean <- mean(data)
data_median <- median(data)

data_unique <- unique(data)
data_table <- table(data)
data_mode <- data_unique[data_table == max(data_table)]
print_cts()

print("FREQUENCY DATA::::::::")
data <- data.frame(
  age = c(18:30),
  freq = c(18, 12, 19, 19, 28, 38, 28, 10, 10, 8, 11, 5, 8)
)

# old method
# data_mean <- sum(data$age * data$freq) / sum(data$freq) # nolint
# data_mode <- data$age[data$freq == max(data$freq)] # nolint
# data_median <- median(rep(data$age, data$freq)) # nolint

# improved
rep_data <- rep(data$age, data$freq)
data_mean <- mean(rep_data)
data_median <- median(rep_data)
# here the which method returns the index as the max(data$freq) == data$freq
# will return a boolean vector
data_mod <- data$age[which(max(data$freq) == data$freq)]
print_cts()

print("GROUPED DATA::::::::")
data <- data.frame(
  mid_x = seq(17, 42, by = 5),
  freq = c(4, 20, 38, 24, 10, 4)
)

data_mean <- sum(data$mid_x * data$freq) / sum(data$freq)

# mode
# h -> class width
# L -> lower bound of modal class
# f_1 -> frequency of modal class
# f_0 -> frequency of class preceeding modal class
# f_2 -> frequency of class succeeding modal class
h <- 5
modal_class_index <- which(data$freq == max(data$freq))
f_1 <- data$freq[modal_class_index]
f_0 <- data$freq[modal_class_index - 1]
f_2 <- data$freq[(modal_class_index + 1)]
frequency_ratio <- (f_1 - f_0) / ((2 * f_1) - (f_0 + f_2))
L <- data$mid_x[modal_class_index] - h / 2 # nolint
data_mode <- L + (frequency_ratio * h)

# median
# n -> sum of frequencies
# L -> lower bound of median class
# f -> frequency of median class
# cf -> cumulative frequency of the class preceeding the median class
# h -> class width
data_cumsum <- cumsum(data$freq)
n <- sum(data$freq)
median_class_index <- min(which(data_cumsum >= n / 2))
L <- data$mid_x[median_class_index] - (h / 2) # nolint
f <- data$freq[median_class_index]
cf <- data_cumsum[median_class_index - 1]
data_median <- L + ((n / 2 - cf) / f) * h
print_cts()
