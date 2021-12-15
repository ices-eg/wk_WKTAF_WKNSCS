#' Data from cod.27.6a
#'
#' @name cod.27.6a
#' @format csv file
#' @tafOriginator ICES, WGCSE.
#' @tafYear 2020
#' @tafAccess Public
#' @tafSource script

library(stockassessment)


dat <- read.taf(taf.data.path("catch.csv"))

write.taf(dat)


fit <- fitfromweb("cod6a_WGCSE2020_final", character.only = TRUE)

save(fit, file = "fit.RData")
