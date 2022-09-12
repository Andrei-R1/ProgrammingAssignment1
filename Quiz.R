#Pregunta 1
#What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
pollutantmean("specdata", "sulfate", 1:10)

#Pregunta 2
#What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
pollutantmean("specdata", "nitrate", 70:72)

#Pregunta 3
#What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
pollutantmean("specdata", "sulfate", 34)

#Pregunta 4
#What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
pollutantmean("specdata", "nitrate")

#Pregunta 5
#What value is printed at end of the following code?
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

#Pregunta 6
#What value is printed at end of the following code?
cc <- complete("specdata", 54)
print(cc$nobs)

#Pregunta 7
#What value is printed at end of the following code?
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

#Pregunta 8
#What value is printed at end of the following code?
cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

#Pregunta 9
#What value is printed at end of the following code?
cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

#Pregunta 10
#What value is printed at end of the following code?
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))

