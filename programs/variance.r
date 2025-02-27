print("RAW DATA::::::::")
data <- c(2, 3, 1, 3, 4, 5)
var <- var(data)
sd <- sqrt(var)
print(paste("Var: ", var))
print(paste("SD: ", round(sd, digits = 3)))

print("FREQUENCY DATA::::::::")
data <- data.frame(
  val <- 1:6,
  freq <- c(2, 3, 1, 3, 4, 5)
)
data_raw <- rep(data$val, data$freq)
var <- var(data_raw)
sd <- sqrt(var)
print(paste("Var: ", var))
print(paste("SD: ", round(sd, digits = 3)))

print("GROUPPED DATA::::::::")
data <- data.frame(
  midx <- 1:6,
  freq <- c(2, 3, 1, 3, 4, 5)
)
data_raw <- rep(data$midx, data$freq)
var <- var(data_raw)
sd <- sqrt(var)
print(paste("Var: ", var))
print(paste("SD: ", round(sd, digits = 3)))
