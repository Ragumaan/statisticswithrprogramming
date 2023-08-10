factors=function(n) {
  result=c()
  for(i in 1:n){
    if(n %% i == 0){
      result=c(result,i)
    }
  }
  
  return(result)
}
n=as.integer(readline("enter a number:"))
cat("the factors of",n,"are:\n")
print(factors(n))