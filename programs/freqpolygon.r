raw_data <- c(1, 2, 3, 4, 1, 2, 2, 3, 1, 1, 3, 4, 5, 5, 4, 3)
break_points <- 0:length(unique(raw_data)) + 1
tranformed_data <- cut(raw_data, break_points, right = FALSE)
table_data <- table(tranformed_data)
cum_freq <- c(0, cumsum(table_data))

plot(break_points, cum_freq)
lines(break_points, cum_freq)
