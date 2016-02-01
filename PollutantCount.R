pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        for(i in id){
                ex <- "csv"
                x <- read.csv(file.path(directory, paste(sprintf("%03d",i), ex, sep = ".") ))
                if(i == id[1]){
                        DF <- x
                } else {
                        DF <- rbind(DF,x)
                }
        }
        means <- mean(DF[[pollutant]], na.rm = TRUE)
        means
}

