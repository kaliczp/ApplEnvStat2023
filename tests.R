## Compare quantiles
qqplot(pH1,pH2)

boxplot(pH1,pH2)

mean(pH1);mean(pH2)

## Find tests
apropos("test")
t.test(pH1,pH2) ## p-value is high -> accept

pH4 <- rnorm(50, 7, 0.3)
pH5 <- rnorm(50, 6, 0.3)
t.test(pH4,pH5) ## -p-value is almost 0 -> not accept
