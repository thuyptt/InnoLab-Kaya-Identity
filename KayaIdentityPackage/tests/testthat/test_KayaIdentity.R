context("Test of KayaIdentity-function")

library(devtools)
library(checkmate)
library(testthat)

test_that("input nonsense 1", {
  pop <- -8
  gdp <- 44
  enInt <- 5
  carbInt <-  0.05
  output_type <- "CO2"
  expect_error(KayaIdentity(pop, gdp, enInt, carbInt, output_type))
})

test_that("input nonsense 2", {
  pop <- 82.4
  gdp <- 44
  enInt <- "a"
  carbInt <-  0.05
  output_type <- "CO2"
  expect_error(KayaIdentity(pop, gdp, enInt, carbInt, output_type))
})

test_that("output is correct 1", {
  pop <- 82.4
  gdp <- 44
  enInt <- 5
  carbInt <-  0.05
  output_type <- "CO2"
  expect_equal(KayaIdentity(pop, gdp, enInt, carbInt, output_type), 82.4*44*5*0.05)
})
test_that("output is correct 2", {
  pop <- 82.4
  gdp <- 44
  enInt <- 5
  carbInt <-  0.05
  output_type <- "CO2"
  expect_equal(KayaIdentity(pop, gdp, enInt, carbInt, output_type), pop * gdp * enInt * carbInt)
})

test_that("output_type = C",{
  pop <- 82.4
  gdp <- 44
  enInt <- 5
  carbInt <-  0.05
  output_type <- "CO2"
  co2 <- pop*gdp*enInt*carbInt
  output_type = "C"
  expect_equal(KayaIdentity(pop, gdp, enInt, carbInt, output_type), 3.67*co2)
})
