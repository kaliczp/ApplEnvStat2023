## manual page
?cor
## Generate data
A <- rnorm(50, 10)
B <- -2 * A + 50 + rnorm(50, 0, 1)
plot(A, B)
cor(A, B)
## Spearman correlation
cor(A, B,meth = "spearman")
## Data frame

AB <- data.frame(Apar = A, Bpar = B)
plot(AB)

ABC <- data.frame(Apar = A, Bpar = B, Cpar = rnorm(50))
plot(ABC)
## Select two variables with formula
plot(Bpar ~ Apar, ABC)
## Named argument
plot(Bpar ~ Apar, data = ABC)

plot(Cpar ~ Apar, ABC)

## Direct reference of a vector in data.frame
ABC$Cpar

## Regression
AB.lm <- lm(Bpar ~ Apar, data = ABC)
AB.lm
## See summaries
summary(ABC)
summary(AB.lm)
