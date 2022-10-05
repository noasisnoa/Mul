#인자분석 = 요인분석

install.packages("ade4")
library(ade4)
data("olympic")
#데이터의 타입을 알려주는 함수
class(olympic)
head(olympic)
?olympic
#33개의 행과 10개의 열로 되어있다. 
sort(olympic$score)


#추출할 요인의 개수 정하기
install.packages("psych")
library(psych)
?fa.parallel
fa.parallel(olympic$tab, fm = "ml", fa = "fa", n.iter = 100)

#그림상에서 빨간 줄 아래로 내려가는 요인의 갯수는사용하지 말자
install.packages("nFactors")
library(nFactors)
round(eigen(cor(olympic$tab))$Values, 3)

#요인의 갯수는 2개로 결정한다.
#요인함수 분석
#1) 주성분인자법 principal()
#2) 최우추정법 factanal()
fap<-principal(olympic$tab, nfactors = 2, rotate = "varimax")
fap      

#RC1 과 RC2 두개의 요인/ RC1은 100, 400, 110, 1500에 강한 상관을 가지고 있다.
#Cumulative Proportion 0.55 1.00/ 두 요인을 합하면 100%의 설명력을 가지고 있다. 
#0.71보다 작기 깨문에 기각할 수 없다. 

biplot(fap, cex=c(0.5, 0.75), main = "FA Biplot")

#최후추정법
fa<-factanal(olympic$tab, factors = 2, scores = "regression")
fa

# Uniquenesses = 각 변수들이 가지고 있는 설명력
#여기서는 Cumulative Var   0.283   0.523 값이 조금 더 낮다. ㅡ,ㅡ 
# p-value is 0.831 이니 기각할 수 없다. => 두 요인으로 충분하다. 
