data<- read.csv("/Users/ilan/Desktop/noodle.csv")
head(data)
#prcomp()함수로 주성분 구한다. 
pca <-prcomp(data, scale = T)
pca

#주성분의 표준편차 값
#Standard deviations (1, .., p=3):
# [1] 1.2541347 0.9022241 0.7830312
#표준 편차가 1 이상인 주성분이 의미가 있음

#Rotation은 상관계수 행렬의 고유백터이다. 
#Rotation (n x k) = (3 x 3):
#  PC1        PC2        PC3
#noodle 0.5715110 -0.6044710  0.5549685
#bowl   0.5221161  0.7896069  0.3223595
#soup   0.6330639 -0.1055260 -0.7668731
#//상관계수 행렬이 무엇인지 다시 확인해보기

summary(pca)

#우리 영어 단어로 되는 거 시험칠거야 
#주 성분분의 표준편차는 1 이상인 부성분이 의미가 있다. 
#분산은 설명력을 의미한다. 
#누적 분산이 80을 넘으면 적당하다고 판단한다.
#Importance of components:
#  PC1    PC2    PC3
#Standard deviation     1.2541 0.9022 0.7830
#Proportion of Variance 0.5243 0.2713 0.2044
#Cumulative Proportion  0.5243 0.7956 1.0000

#screeplot()함수를 이용하여 주 성분들의 갯수를 결정한다.
screeplot(pca, type = "l", pch = "19", lwd = "3", col ='red', main = "screeplot" )
#두개가 있음을 의미한다.

#predict()함수를 이용하여 주성분 점수 출력하기
round(predict(pca), 3)

#biplot주성분의 상관관계를 해석한다.
biplot(pca, cex = c(0.5, 0.75), main = "biplot")




