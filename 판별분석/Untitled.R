# 판별함수
# LDA Supervised : 집단을 분류(Classfication)가 잘되는 방향으로, 겹치지 않는 방향으로 
# 그룹간 분산을 커야한다. 
install.packages('MASS')
library(MASS)
data(iris)
#데이터 결측치 확인하기
#훈련과 테스트로 데이터 분류
train<-sample(1:500, 100)
train

# 훈련데이터 선형판별분석
a<-lda(Species~., data=iris, subset=train)
a

# <결과>
#Proportion of trace:
#LD1    LD2 
#0.9819 0.0181
#LD1이 우수하다.

#여러가지 요소들
a$prior
a$counts
a&means
a$scaling
a$lev
a&svd # 고육값

# 테스트 데이터 예측하기
pa<-predict(a, iris[-train,] ) #행에서 train을 다 뺸다. 
pa

#정오분류표
t<-table(pa$class, iris$Species[-train], dnn=c("Actual","predicted"))
t

p<-sum(diag(t)/sum(t))
p

#오분률
1-p      

#시각화
install.packages('klasR')
library(klaR)
#판ㅁ별함수 시각화
plot(a, dimen = 2)
plot(a, dimen = 1)
plot(pa$x, type='n', main='LDA', col=as.numeric(iris$Species[-train]), ces = 1.5)
text(pa$x, as.character(ps$class), col=as.numeric(iris$Species[-train]), ces = 1.5)
