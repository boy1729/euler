setwd("D:/338209/misc/euler")


n <- read.csv("11.csv", header = F)


v <- 0
h <- 0
d1 <- 0
d2 <- 0

for(i in 1:nrow(n))
{
  for(j in 1:17)
  {
    zz <- prod(n[i,j:(j+3)])
    if(zz > h){h <- zz}
  }
}

for(i in 1:ncol(n))
{
  for(j in 1:17)
  {
    zz <- prod(n[j:(j+3),i])
    if(zz > v){v <- zz}
  }
}


for(i in 1:17)
{
  for(j in 1:17)
  {
    zz <- prod(n[i,j],n[(i+1),(j+1)],n[(i+2),(j+2)],n[(i+3),(j+3)])
    if(zz > d1){d1 <- zz}
  }
}

for(i in 1:17)
{
  for(j in 4:20)
  {
    zz <- prod(n[i,j],n[(i+1),(j-1)],n[(i+2),(j-2)],n[(i+3),(j-3)])
    if(zz > d2){d2 <- zz}
  }
}

result <- max(h,v,d1,d2)