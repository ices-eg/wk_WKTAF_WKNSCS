#' ICES area shapefiles
#'
#' @name ices_areas
#' @format shape files
#' @tafOriginator ICES.
#' @tafYear 2020
#' @tafAccess Public
#' @tafSource script

filename <- "ICES_areas.zip"
# download and unzip
download(paste0("http://gis.ices.dk/shapefiles/", filename))
unzip(filename)
# delete zip file
unlink(filename)
