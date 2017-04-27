setwd("D:/338209/misc/euler")

p <- 20 #define the number to which the lcm has to be found

lcm <- function(m,n)
{
  a <- m
  b <- n
  
  while(a != b)
  {
    if(a<b)
    {a <- a + m}
    if(a>b)
    {b <- b + n}
  }
  return(a)
}

z <- 1
for(i in 1:p)
{
  z <- lcm(z, i)
  print(z)
}
  
print(z)