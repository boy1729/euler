n <- 999

z <- list()
k = 1

for (i in 1:n) {
  if (i %% 3 == 0 | i %% 5 == 0) {
    z[k] <- i
    k <- k+1
  }
}

z <- unlist(z)
sum(z)
