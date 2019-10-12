alldata <- read.csv("caravan-insurance-challenge.csv")
glm.fit<-glm(CARAVAN~.,data=alldata,family=binomial)
summary(glm.fit)
# Here the summary is printed
glm.probs<-predict(glm.fit,type="response")
glm.probs[1:5]
# Here the first 5 probabilities are printed
glm.pred<-ifelse(glm.probs>0.5,"Up","Down")
attach(alldata)
table(glm.pred,CARAVAN)
# Here the predictions are made and the table gets printed

print("Company should not continue to sell the product because the number of Downs are more than the number of Ups")
