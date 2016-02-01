complete <- function(directory, id = 1:332){
        for(i in id){
                ex <- "csv"
                x <- read.csv(file.path(directory, paste(sprintf("%03d",i), ex, sep = ".") ))
                good <- complete.cases(x)
                DF <- x[good,]
                le <- nrow(DF)
                df <- data.frame(id = i, nobs =le)
                if(i == id[1]){
                        final <- df
                } else {
                        final <- rbind(final,df)
                }
                
        }
        final
}