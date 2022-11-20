library(MASS)
data("eurodist")
head(eurodist)
str(eurodist)
eurodist
####거리척도의 MDS 구하기
#거리 행렬로 표현되어있는 데이터
class(eurodist)
c<-cmdscale(eurodist)
#상대적 거리의 좌표로 보여준 것
c
dim(c)
x<-c[,1]
y<-c[,2]
plot(y~x, type='n', asp=1, main="Metric MDS")
#cex 글자크기
text(x, y, rownames(c), cex=1.2)
abline(v=0, h=0, lty=2, lwd=1)

####순서척도의 MDS 구하기 
data("swiss")
#거리화
d<-dist(swiss)
#거리행렬
d
i<-isoMDS(d)
i

plot(i$points, type='n')
text(i$points, labels=rownames(swiss), cex=1.2)
abline(v=0, h=0, lty=1, lwd=2)

#거리행렬이 많은 데이터를 분석
data("USJudgeRatings")
str(USJudgeRatings)
d1<-dist(USJudgeRatings)
c1<-cmdscale(d1)
c1

x<-c1[,1]
y<-c1[,2]

plot(y~x, type='n', asp=1)
text(x, y, lables=rownames(c1), cex=1.5)
abline(v=0, h=0, lty=1, lwd=1)
