n <- 4000000

z <- list()

k = 3
z[1] <- 1
z[2] <- 2
m <- z[2]

while (m < n) {
  z[k] <- unlist(z[k-1]) + unlist(z[k-2])
  m <- z[k]
  k <- k + 1
  }
z <- unlist(z)

p <- seq(2,length(z),3)

sum(z[p])
