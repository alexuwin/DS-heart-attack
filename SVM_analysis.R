set.seed(1)
train=sample(303,303*0.8)

library(e1071)
heart=data.frame(heart)
heart$output <- factor(heart$output)
output=heart$output
heart.train = heart[train,]
heart.test = heart[-train,]


#LINEAR
tune.linear=tune(method=svm,output~.,data=heart,kernel="linear",
              ranges=list(cost=c(0.001,0.01,0.1,1,2,3,4,5,10,20,30,40,50,75,100)))
summary(tune.linear)
#mean(predict(tune.linear$best.model, newdata=heart[-train,]) != output[-train])

svm.L <- svm(output~., data=heart.train,
              kernel="linear",cost=0.01, scale=TRUE)
svmL.pred <- predict(svm.L, newdata=heart[-train,])
#table(heart.test$output,svmL.test.pred)
table(true=heart[-train,"output"],pred=svmL.pred)
linearError=(1+7)/(18+35+1+7)
linearError

#POLYNOMIAL
tune.poly=tune(method=svm,output~.,data=heart,kernel="polynomial",
               ranges = list(cost = c(0.001,0.01,0.1,1,2,3,4,5,10,20,30,40,50,75,100), degree = c(1,2, 3, 4,5)))
summary(tune.poly)
svm.P = svm(output~.,data=heart.train,kernel="polynomial",cost=30,degree=1, scale=TRUE)
svmP.pred <- predict(svm.P, newdata=heart[-train,])
table(true=heart[-train,"output"],pred=svmP.pred)
polyError=(2+7)/(18+34+1+7)
polyError

#RADIAL
tune.rad=tune(method=svm,output~.,data=heart,kernel="radial",
               ranges = list(cost = c(0.001,0.01,0.1,1,2,3,4,5,10,20,30,40,50,75,100), gamma = c(0.01, 0.1, 1, 2, 3, 4, 5)))
summary(tune.rad)
svm.R = svm(output~.,data=heart.train,kernel="radial",cost=5,gamma=0.01, scale=TRUE)
svmR.pred <- predict(svm.R, newdata=heart[-train,])
table(true=heart[-train,"output"],pred=svmR.pred)
radError=(2+7)/(18+34+1+7)
radError