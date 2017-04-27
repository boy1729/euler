setwd("D:/Study/R/euler")

options(scipen = 999)


q <- read.table("13.txt", colClasses = "character")

n <- as.numeric(q[1,])

for(i in 2:nrow(q))
{
  z <- as.numeric(q[i,])
  n <- n+z
}

