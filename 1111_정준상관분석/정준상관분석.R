data<-read.csv("F:/대학교/Mul/Data/정준상관분석.csv")
attach(data)
head(data)
class(data)
dim(data)
##X1~X3 온도, 농도 시간 
##Y1:변하지 않고 남은 양
##Y2:반응후 생성된 양
x<-data[, 3:5]
y<-data[, 1:2]

#상관계수 행렬 구하기
cor(data)
#cancor() 정준상관분석
cancor(x, y)

#{CCA}의 cc() 정준상관분석
install.packages('CCA')
library(CCA)
c<-cc(x, y)
#plt.cc() 정준상관분석 그래프 그리기 
plt.cc(c, type = 'b', var.label = T)
u1<-c$scores$xscores[,1]
v1<-c$scores$yscores[,1]
#상관관계가 있음
plot(u1, v1, pch=15 , main = "u1, v1 정준상관분석" )
u2<-c$scores$xscores[,2]
v2<-c$scores$yscores[,2]
#상관관계가 없음
plot(u2, v2, pch=15, main = 'u2, v2 정준상관분석')
