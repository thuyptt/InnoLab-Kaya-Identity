# Exercise 1: Implementation

# (a)
# needed variables
pop <- 82.4        # mio
gdp <- 44          # in $1000/person
enInt <- 5         # in GJ/$1000GDP
carbInt <-  0.05   # in tonnes CO2/GJ

# Kaya identity
co2 <- pop * gdp * enInt * carbInt
co2
# co2 for Germany: 906.4

# (b)



#' Kaya Identity
#'
#' The Kaya Identity is an equation that expresses yearly CO2 emissions as a product
#' of following four factors
#'
#' @param pop Population size (in millions)
#' @param gdp GDP per capita (in 1000$/person)
#' @param enInt Energy intensity (in Gigajoule/$1000GDP). Energy intensity is the energy needed to produce a certain amount of economic value.
#' @param carbInt Carbon intensity (in tonnes CO2/Gigajoule). Carbon intensity is the CO2 emitted for produced energy. This number depends on the energy mix used (coal, solar, . . . )
#'
#' @details
#' The Kaya Identity can be computed as: co2 = pop * gdp * enInt * carbInt
#'

newFunction <- function(pop, gdp, enInt, carInt){
  co2 <- pop * gdp * enInt * carbInt
  return(co2)
}

# use roxygen to document a package
document(pck = "", roclets = NULL, quiet = FALSE)


