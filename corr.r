corr <- function(directory, threshold = 0){
        id = 1:332
        f = 1
        for(i in id){
                ex <- "csv"
                x <- read.csv(file.path(directory, paste(sprintf("%03d",i), ex, sep = ".") ))
                good <- complete.cases(x)
                DF <- x[good,]
                le <- nrow(DF)
                final <- cor(DF[["sulfate"]], DF[["nitrate"]])
                if(le > threshold && i == id[1]){
                        f <- final
                } else
                if(le > threshold){
                        f <- rbind(f, final)
                }
                        
                       
        }
        
        f = f[-1]
        f
}
       
