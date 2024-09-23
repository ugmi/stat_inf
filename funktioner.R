# Likelihood function
L <- function(theta, y, X){
  p <- 1/(1+exp(-theta %*% t(X)))
  prod(dbinom(y, 1, p))
  }

# Log-likelihood function
l <- function(theta, y, X){
  log(L(theta, y, X))
  }

# Score function
S <- function(theta, y, X){
  p <- 1/(1+exp(-theta %*% t(X)))
  t(X) %*% (y - t(p))
  }

# Fisher Information
I <- function(theta, y, X){
  p <- 1/(1+exp(-theta %*% t(X)))
  D <- diag(as.vector(p*(1-p)))
  t(X) %*% D %*% X
  }

# Newton-Rhapson's algorithm
NR <- function(theta0, niter, y, X){
  ...}

