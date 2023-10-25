hist(pH1)
pH1dens <- density(pH1)
plot(pH1dens)

hist(pH1, freq = FALSE)
lines(pH1dens)
