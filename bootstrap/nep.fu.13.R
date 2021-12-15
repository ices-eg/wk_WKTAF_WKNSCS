#' Data from sharepoint for nep.fu.13
#'
#' @name nep.fu.13
#' @format csv file
#' @tafOriginator ICES, WGCSE.
#' @tafYear 2020
#' @tafAccess Public
#' @tafSource script

library(icesSharePoint)

options(icesSharePoint.site = "/ExpertGroups/WGCSE")

# find the directory we want to access
#spdir()
#spdir("2021 Meeting Documents/06. Data")
# fnames <- spfiles("2021 Meeting Documents/06. Data", full = TRUE)

spgetfile("2021 Meeting Documents/06. Data/nep.fu.13.zip", destdir = ".")

unzip("nep.fu.13.zip", exdir = "temp")

file.copy("temp\\nep.fu.13_average_discards_2017-19\\data\\By gear.csv", "By_gear.csv")

#unlink("temp")
