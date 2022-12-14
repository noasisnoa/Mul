data(cars)
str(cars)

#회귀모형
l<-lm(cars$dist~cars$speed, data = cars)
summary(l)

###상관관계 분석 
plot(cars$speed, cars$dist, pch=19)
cor.test(cars$speed, cars$dist)
abline(coef(l), col ='red', lty = 5, lwd = 2)

#speed = 20
l$coefficients

b=l$coefficients[1]
a=l$coefficients[2]

y = b + a*20
y


library(MASS)
data("Cars93")
str(Cars93)
l2<-lm(Price~EngineSize+Horsepower+RPM+Width+Weight+Length, data=Cars93)
summary(l2)
s<-step(l2, direction = "backward")
s





##############################################################################
#데이터마이닝(1)
data(iris)
##130, 20으로 나누어라
set.seed(1234)
rs<-iris[sample(nrow(iris)), ]

train_x<-rs[1:130, -5]
train_y<-rs[1:130, 5]

test_x<-rs[131:150, -5]
test_y<-rs[131:150, 5]

library(class)
k10<-knn(train=train_x, test=test_x, cl = train_y, k=10)
summary(k10)
t<-table(k10, newdata=test_y, dnn=c("Predicted","Accuarcy"))
1-sum(diag(t))/sum(t)
mean(k10==test_y)


k60<-knn(train=train_x, test=test_x, cl=train_y, k=16)
summary(k60)
t<-table(k60, newdata=test_y)
1-sum(diag(t))/sum(t)
mean(k60==test_y)

str(iris)
set.seed(1234)
rs2<-iris[sample(nrow(iris)),]
train<-rs2[1:130,]
test<-rs2[131:150,]
library(kknn)
train.kknn(Species~., train, test, ks=seq(1, 50, by = 2), scale = F)

#데이터마이닝(2)
data(iris)
iris$Species
iris2<-subset(iris, Species=="setosa"| Species == "versicolor")
iris2

g<-glm(Species~Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris2, family = "binomial")
step(g, direction = "backward")
