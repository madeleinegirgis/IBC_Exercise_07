setwd("/Users/madeleinegirgis/desktop/biocomputing")
iris <- read.csv("iris.csv")
iris
#odd rows. Function that returns only the odd rows in the dataset. 
#Usage: oddrows(dataset)
oddrows <- function(x){
  rows <- nrow(x)
  odd <- x[seq(1,rows,2), ]
  return(odd)
}


#return the number of instances found in each species for the dataset. 
#Usage: numberOfSpecies(dataset, "species name")
numberOfSpecies <- function(x, species){
  speciesnumber <- (x[x$Species==species, ])
  linecount <- nrow(speciesnumber)
  return(linecount)
}


#return a dataframe for flowers with a Sepal Width greater than the value you specify 
#usage: specifySepalWidth(dataframe, value)
specifySepalWidth <- function(x, width){
   width <- x[x$Sepal.Width>width, ]
   return(width)
}

#create csv file in which a given species's data goes. 
#usage: SpeciesCSV(dataset, "species")
SpeciesCSV <- function(x, species){
  speciesname <- (x[x$Species==species, ])
  write.csv(speciesname, file = paste(species, ".csv", sep=""))
}


