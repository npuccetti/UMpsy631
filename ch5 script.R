
#5.17
#a

library('foreign')
ADDdata = data.frame(read.spss('C:/Users/npuccetti/Desktop/Add.sav'))
ADDSC = ADDdata$ADDSC

ADDSC_m = 54.3
ADDSC_sd = 12.9
score = 50

z = (score - ADDSC_m)/ADDSC_sd

#pnorm gives the probability of getting (z) or less, hence the 1- 
Probability = (1-pnorm(z))
Probability

#b

freq = table(ADDSC)
sum(freq[20:44])/sum(freq[1:44])

#5.19
#how might you use condition prob to determine if a an ADDSC cut off score of 66 is predictive of whether or not a person will drop out of school

install.packages('gmodels')
library(gmodels)


ADDdata$Dropout <- factor( ADDdata$Dropout, #change foreign to a factor 
                           levels=c(0,1), #list all possible values of foreign 
                           labels=c('No','Yes')) #list how those values should be labeled, in order

ADDdata$ADDSC <- factor( ADDdata$ADDSC>65, #create a factor for whether the car is efficient 
                             levels=c(F,T), #possible values 
                             labels=c('Below','Above')) #labels for those values

CrossTable(ADDdata$ADDSC, ADDdata$Dropout)


#The table above provides the number of people who are above or below the cut off and who dropped out or did not drop out of high school.
#The proportion of people in each cell translate to probabilities. The probability of dropping out given the 66 or higher cutoff score is .600,
#so we multiply this by the probably of dropping out across all scores (.114) to find a conditional probability of .068 ( also 6/88) or 6.8% 
#chance of hitting a score of over 66 and dropping out. 

#P(a) * P(b|a)
#P(drop/total) =10/88 * P(above+drop/drop) = 6/10

#5.21

# Binomial: probability of n/10 people answering a five-choice trial correct

p = .20; q = .80   # Probabilities of success and failure
for ( i in 0:10){
    outcome= c(i , (10-i))
    N = sum(outcome)
    ans = dbinom(outcome[1], N, c(p))
    print(ans)
  }


 