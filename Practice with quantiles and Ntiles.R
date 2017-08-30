library(foreign)
pracdata = data.frame(read.spss('/Users/nikkipuccetti/Desktop/Grad School/Fall_2017 /Statistics/Practice_Tab2-1.sav') )
pracdata$NStim = factor(pracdata$NStim, labels = c('one', 'three', 'five'))
##turn indicator variables into factors^
table(pracdata$RxTime, pracdata$NStim)
##frequency table of Rx by the three Nstim groups/factors/levels
prop.table(table(pracdata$RxTime, pracdata$NStim), 1)
##percentage of total (not sure how this applies here but better for another context)

aggregate(RxTime ~ NStim, data = pracdata, FUN = function(x) quantile(x, c(.25, .5, .75)))
##Quantiles by grouping variable!
