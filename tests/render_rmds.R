
## call rmarkdown on all .Rmd files
f <- list.files(recursive = TRUE)
Rmds <- f[grepl(".Rmd$", f)]
## This is OKAY!
#lapply(Rmds, function(x) rmarkdown::render(x))
## This breaks if `mean` is not specified as `raster::mean()`
lapply(Rmds, rmarkdown::render)
