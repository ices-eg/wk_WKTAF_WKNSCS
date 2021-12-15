

library(icesTAF)

# create skeleton
taf.skeleton()

# get data
draft.data(
  originator = "WGNSSK",
  year = 2019,
  title = c(
    "Catch data for cod.27.347d",
    "Cod 6a 2020 assessment fit",
    "ICES areas"
    ),
  period = "2015-2018",
  file = TRUE
)



taf.roxygenise(
  files =
    c(
      "catch.R",
      "cod.27.6a.R",
      #"ices_areas.R",
      "nep.fu.13.R"
    )
  )



taf.bootstrap()

taf.bootstrap(software = FALSE)

#
taf.bootstrap(taf = TRUE)
