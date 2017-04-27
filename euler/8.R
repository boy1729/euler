setwd("D:/338209/misc/euler")

s <- 13 #length of product

m <- read.table("8q.txt", colClasses = "character")
n <- m[1,]

for(i in 2:nrow(m))
{
  n <- paste0(n,m[i,])
}

q <- 0
v <- 0

for(i in 1:(1000+1-s))
{
  rr <- substring(n,i,(i+12))
  p <- prod(as.numeric(unlist(strsplit(rr, split = ""))))
  if(p>q)
  {
    q <- p
    v <- i
  }
  
}

l <- substring(n,v,(v+12))

print(q)
print(v)
print(l)
