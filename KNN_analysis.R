library(ISLR)     #loading necessary libs 
library(class)

#importing dataset
heart <- read.csv("~/Downloads/heart.csv")

head(heart)
summary(heart)

#scale the data for training set 
X.train <- scale(heart[,-14])

K.set <- 1:100   #making an array to hold K-values from 1-100

knn.test.err <- numeric(length(K.set)) #an array for storing training error values for K-values from 1-100

#standard leave one out cross validation set approach using K=1
testpred <- knn.cv(train = X.train,cl = heart$output,k=1)
mean(testpred != heart$output)

for(i in 1:length(K.set))
{
  set.seed(1)
  knn.cv.pred <- knn.cv(train = X.train,
                        cl = heart$output,
                        k=i)
  #prints every k-value and corresponding testing error
  #print(i)
  #print(mean(knn.cv.pred != heart$output))
  
  knn.test.err[i] <- mean(knn.cv.pred != heart$output)
}

#prints out the minimum testing error and the corresponding K-value
min(knn.test.err)
which.min(knn.test.err)

#knn.cv.pred <- knn.cv(train = X.train,cl = heart$output,k=which.min(knn.test.err))
#table(knn.cv.pred, heart$output)

#plots every K-value against the test error
plot(K.set, knn.test.err,
     type='b',
     xlab="K",
     ylab="Test error",
     main="KNN for Heart Data")
