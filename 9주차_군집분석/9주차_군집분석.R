#군집분석
#분류하고자 하는 그룹의 개수가 정해져 있지 않다. : 비지도학습

#(0.0)과 (2,2)의 거리 구하기
a<-c(0,0)
b <-c(2,2)
print(sqrt((2-0)^2+(2-0)^2))

#유클리디안 거리 구하기
data(iris)
dist_e_iris<-round(dist(iris[1:5, 1:2], method='euclidean'), 2)
dist_e_iris
plot(dist_e_iris, xlab='data', ylab='distance', main='euclidean distance')

#맨하탄 거리
dist_m_iris<-round(dist(iris[1:5, 1:2], method='manhattan'), 2)
dist_m_iris
plot(dist_m_iris, xlab='data', ylab='distance', main='manhattan distance', pch=15)

#마할라노비스 거리
a<-c(0,0)
b <-c(2,2)
aa<-rbind(a,b)
cov(aa)
#t(x-y)*(cov()-1*(x-y)
i<-iris[1:5, 1:2]
x<-c(5.1,3.5)
y<-c(4.9, 3.0)
x-y
t(x-y)
cov(i)
#역행렬
solve(cov(i))

sqrt(t(x-y)%*%solve(cov(i))%*%(x-y))