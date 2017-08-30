file = '/Users/nikkipuccetti/Desktop/Grad School/Fall_2017 /Statistics/2.27_data.csv'
Data <- read.csv(file, header = FALSE, sep = ",")
names(Data) <- c('Year','Cases')

plot(Data$Year, Data$Cases)



