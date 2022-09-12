library("data.table")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  fileNames <- paste0(directory, '/', formatC(id, width=3, flag="0"), ".csv" )
  
  lst <- lapply(fileNames, data.table::fread)
  dt <- rbindlist(lst)
  
  if (c(pollutant) %in% names(dt)){
    return(dt[, lapply(.SD, mean, na.rm = TRUE), .SDcols = pollutant][[1]])
  } 
}

# Example usage
print(R.version.string)
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)

