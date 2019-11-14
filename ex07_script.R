#exercise 7 - Cailey Brogan

#number 1: return the odd rows from a dataframe passed as an argument
iris<-read.csv("iris.csv")
findOddRows<-function(x) {
  return(x[seq(1, nrow(x), 2), ])
}
findOddRows(x = iris)
 
#----------------------------------------------------------------------------------------------------#

#number 2
#function to return the number of observations for a given species
num_obs<-function(x, taxa) {
  resultObs<-x[x$Species==taxa,]
  return(nrow(resultObs))
}
num_obs(x = iris, taxa = "setosa")

#return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
width<-function(x, wd) {
  resultWd<-x[(x$Sepal.Width>wd),]
  return(resultWd)
}
width(x = iris, wd = 3.5)

#write the data for a given species to a comma-delimmited file with the given species name as the file name
writeFile<-function(x, taxa) {
  subData<-x[x$Species==taxa,]
  write.csv(subData, paste(taxa, ".csv", sep=""))
}
writeFile(x = iris, taxa = "setosa")







