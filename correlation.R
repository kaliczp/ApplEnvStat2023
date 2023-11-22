## manual page
?cor
## Generate data
A <- rnorm(50, 10)
B <- -2 * A + 50 + rnorm(50, 0, 1)
plot(A, B)
cor(A, B)
