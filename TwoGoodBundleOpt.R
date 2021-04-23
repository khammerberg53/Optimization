library(alabama)

getUtility <- function(bundle){
  
  util <-  -1 * sqrt(bundle[1]) * sqrt(bundle[2])
  
  return(util)
  
}

budgetLineConstraint <- function(bundle){
  
  h <- rep(NA, 1)
  
  rope <- bundle[1]
  ski <- bundle[2]
  
  h[1] <- ski - (10 - rope/2) 
  
  h
  
}

maxUtil <- constrOptim.nl(par = c(1, 1),     
                          fn = getUtility,
                          heq = budgetLineConstraint)

str(maxUtil)

maxUtil$par
