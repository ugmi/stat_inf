# Likelihood function
L <- function(theta, y, X) {
  p <- 1/(1+exp(-theta %*% t(X)))
  return(prod(dbinom(y, 1, p)))
}

# Log-likelihood function
l <- function(theta, y, X) {
  return(log(L(theta, y, X)))
}

# Score function
S <- function(theta, y, X) {
  p <- 1/(1+exp(-theta %*% t(X)))
  return(t(X) %*% (y - t(p)))
}

# Fisher Information
I <- function(theta, y, X) {
  p <- 1/(1+exp(-theta %*% t(X)))
  D <- diag(as.vector(p*(1-p)))
  return(t(X) %*% D %*% X)
}

# Newton-Rhapson's algorithm
NR <- function(theta0, niter, y, X) {
  theta <- theta0
  for (i in 1:niter) {
    theta <- theta + t(solve(I(theta, y, X)) %*% S(theta, y, X))
  }
  return(theta)
}
