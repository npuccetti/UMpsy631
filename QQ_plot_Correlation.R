library('foreign')
data = data.frame( read.spss('/Users/nikkipuccetti/Desktop/Grad School/Fall_2017 /Statistics/Add.sav') )

qqnorm(data$GPA, datax = TRUE)
qqline(data$GPA, datax = TRUE)
# this command over lays the lie for you
# there is also a qqplot command which requires two variables?

cor.test(data$GPA, data$IQ,  alternative = c("two.sided", "less", "greater"),
         exact = NULL, conf.level = 0.95, continuity = FALSE)
plot(data$GPA, data$IQ)
p = .0000008415
