## Download some dataset from odp.met.hu
## Unzip into the folder for the course
## Import into your workspace based on R Data Import/Export manual 2nd section
Sop.Prec <- read.table("r_h_Sopron_19012021.csv", sep = ";")
summary(Sop.Prec)
head(Sop.Prec)
## Header is exists
Sop.Prec <- read.table("r_h_Sopron_19012021.csv", sep = ";", head = TRUE)
## Explore data
boxplot(Sop.Prec$r)
qqnorm(Sop.Prec$r)
qqline(Sop.Prec$r)
plot(density(Sop.Prec$r))
plot(density(Sop.Prec$r), xlim=c(0,3))

## Time-series
install.packages("xts")
library(xts)
## Generate dates for dataset
SopDate <- as.Date("1901-01-01")+0:44194
SopDate <- seq(as.Date("1901-01-01"), as.Date("2021-12-31"), "day")
?seq.Date
summary(SopDate)
plot(SopDate, Sop.Prec$r, typ="h")

## xts time series
SopPrec.xts <- xts(Sop.Prec$r, SopDate) 
plot(SopPrec.xts)
plot(SopPrec.xts['2021'], type = "h")
plot(SopPrec.xts['2020'], type = "h")
plot(SopPrec.xts['2020/2021'], type = "h")
