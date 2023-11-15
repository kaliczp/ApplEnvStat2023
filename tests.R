## Compare quantiles
qqplot(pH1,pH2)

boxplot(pH1,pH2)

mean(pH1);mean(pH2)

## Find tests
apropos("test")
t.test(pH1,pH2) ## p-value is high -> accept

pH4 <- rnorm(50, 7, 0.3)
pH5 <- rnorm(50, 6, 0.3)
var.test(pH4,pH5) ## 0 hypothesis can not be discard
t.test(pH4,pH5, var.equal = TRUE) ## -p-value is almost 0 -> not accept
boxplot(pH4,pH5)
