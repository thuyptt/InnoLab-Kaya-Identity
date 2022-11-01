# install.packages("devtools")
# install.packages("roxygen2")
# install.packages("checkmate")

library(devtools)
library(roxygen2)
library(checkmate)

#' Kaya Identity
#'
#' The Kaya Identity is an equation that expresses yearly CO2 emissions as a product of certain four factors
#'
#' @param pop Population size (in millions)
#' @param gdp GDP per capita (in 1000$/person)
#' @param enInt Energy intensity (in Gigajoule/$1000GDP). Energy intensity is the energy needed to produce a certain amount of economic value
#' @param carbInt Carbon intensity (in tonnes CO2/Gigajoule). Carbon intensity is the CO2 emitted for produced energy. This number depends on the energy mix used (coal, solar, . . . )
#' @param output_type output options are "CO2" or "C" (for Carbon), where “CO2” is the default
#'
#' @details The Kaya Identity can be computed as: co2 = pop * gdp * enInt * carbInt
#'
#' @return The CO2 emissions gets printed to the console
#' @export
#'
#' @examples KayaIdentity(pop=82.4, gdp=44, enInt=5, carbInt=0.05, output_type="CO2") # co2 for Germany: 906.4

KayaIdentity <- function(pop, gdp, enInt, carbInt, output_type){
  stopifnot(is.numeric(pop))
  stopifnot(pop>=0)
  stopifnot(is.numeric(gdp))
  stopifnot(is.numeric(enInt))
  stopifnot(enInt>=0)
  stopifnot(is.numeric(carbInt))
  stopifnot(carbInt>=0)
  co2 <- pop * gdp * enInt * carbInt
  C <- 3.67*co2
  if (output_type == "CO2") {
    return(co2)
  }
  else if (output_type == "C"){
    return(C)
  }
}

# document the function:
# devtools::document(roclets = c('rd', 'collate', 'namespace'))


# load the package (2 options):
# library(KayaIdentityPackage)
# devtools::load_all(".")


# calling the help site for the KayaIdentity funtion from the KayaIdentityPackage
# ?KayaIdentity
