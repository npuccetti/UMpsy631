library('foreign')
data = data.frame( read.spss('/Users/nikkipuccetti/Desktop/Grad School/Fall_2017 /Statistics/Add.sav') )

mean = mean(data$GPA, na.rm=TRUE)
sd = sd(data$GPA, na.rm=TRUE)

z = .67
#used z table to find the '.25' as smaller area under the curve (aka 75th percentile)
Raw_score = mean + sd*z
#z score to raw score conversion

quantile(data$GPA, na.rm=TRUE)
#interestingly this command was incorrect?


