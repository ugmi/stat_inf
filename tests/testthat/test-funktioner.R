# To run the tests, input into the console of the function file:
# testthat::test_file("tests/testthat/test-funktioner.R")
# Alternatively, if working in RStudio:
source("./../../funktioner.R")

theta <- c(0.1, 0.11)
y <- c(FALSE, TRUE, TRUE)
X <- matrix(c(1, 1, 1, 25, 21, 29), nrow=3)

test_that("Likelihood works", {
  expect_equal(round(L(theta, y, X), 4), 0.0484)
})