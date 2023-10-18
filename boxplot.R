### Boxplot from list
## set random number generation
set.seed(1)
## generate nandom pH data
pH1 <- rnorm(20, 7, 0.3)
pH2 <- rnorm(100, 7, 0.4)
pH3 <- rnorm(150, 7, 0.4)

## Make list
pHlist <- list(pH1 = pH1, pH2 = pH2, pH3 = pH3)

## Generate boxplot
boxplot(pHlist)
