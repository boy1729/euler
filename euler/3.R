n <- 600851475143

m <- as.integer(sqrt(n))

for (i in 1:m) {
  if (n %% i == 0) {
      m <- n %/% i
    }
  q <- n/m
  }

m1 <- as.integer(sqrt(m))
q1 <- as.integer(sqrt(q))

for (i in 1:m1) {
  if (m1 %% i == 0) {
    m11 <- m1 %/% i
  }
  q11 <- m1/m11
}

for (i in 1:q1) {
  if (q1 %% i == 0) {
    m21 <- m %/% i
  }
  q21 <- m/m1
}
