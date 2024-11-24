library(SINCERA)

input <- function(inputfile) {
   mySC <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
# Run batch.analysis function to generate plots that may help identify potential batch differences.
sc <- prefilterGenes(mySC, pergroup=FALSE, min.expression=1, min.cells=1, min.samples=1)
saveRDS(sc,outputfile)
}
