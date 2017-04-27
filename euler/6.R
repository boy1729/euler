n <- 100 #define the number to which result has to be found

s1 <- n*(n+1)/2
s12 <- s1^2

a <- 0

for(i in 1:n)
{
  a <- a + i*i
}
  
b <- s12 - a
print(b)