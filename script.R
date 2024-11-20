y <- data.frame(
                age = seq(10, 60, by=10),
                frequency = c(1, 2, 3, 5, 6, 4)
);
mat <- matrix(1:9, nrow=3, byrow=T);
dimnames(mat) <- list(
                      c("R1", "R2", "R3"),
                      c("C1", "C2", "C3")
)

print(mat * 2);
