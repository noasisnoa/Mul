data <-read.csv("/Users/ilan/Desktop/bumpus.csv", encoding = "UTF=8")
# 106쪽 읽어 봐

head(data)
str(data)
#데이터의 종류를 알려준다.
class(data)
#data.frame 이라는 것을 알 수 있다. 

#ID가 필요없기 때문에 subset 함수를 이용하여 ID 없애주기
data<-subset(data, select = c("X1", "X2", "X3", "X4", "X5"))

#데이터의 단위 값이 다르므로 
#6.1 표 참고 cor은 상관계수
CH <-round(cor(scale(data)), 3)
CH
class(CH)

#주성분 분석을 위해 상관계수 행렬의 고유벡터 고유값 구하기
#eigen은 상관계수 행렬의 고유값 고유백터를 구해주는 함수
eigen(CH)
#values 고유값
round(eigen(CH)$values, 3) 
#vectors 고유백터
round(eigen(CH)$vectors, 3)


### 함수를 이용하여 주성분 수하기
#T에 "T"이거 아님 T임
pca<-prcomp(data, scale = T)
summary(pca)
#Cumulative 는 점점 값들이 더해지지는 것이다. 70%~80%이 적절하다. 
screeplot(pca, type = "l", lwd = "3", pch ="19", col = "red", main = "screeplot" )
biplot(pca, cew = c(0.5, 0.75), main = "biplot")
#화살표가 서로 모여있으면 서로 영향을 많이 준다. 
