data(USArrests)
z<-data.frame(scale(USArrests))

#군집분석
d<-dist(z, method = 'euclidean')

#최단연결법
f1<-hclust(d, method = 'single')
#코페네틱 계수구하기
install.packages('cluster')
library(cluster)
cop_f1<-cophenetic(f1)
# 코페네틱 계수와 거리와의 상관계수구하기
cor(cop_f1, d)
#결합계수
agnes(z, method = 'single')$ac
#3. 덴드로드그램 그리기
plot(f1, main='sibgle Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')




#최장거리 연결법
f2<-hclust(d, method = 'complete')
#코페네틱 계수구하기
install.packages('cluster')
library(cluster)
cop_f2<-cophenetic(f2)
# 코페네틱 계수와 거리와의 상관계수구하기
cor(cop_f2, d)
#결합계수
agnes(z, method = 'complete')$ac
#3. 덴드로드그램 그리기
plot(f2, main='complete Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f2, k=6))
group_k6
rect.hclust(f2, k =6, border='red')



#와드법
f3<-hclust(d, method = 'ward.D2')
#코페네틱 계수구하기
install.packages('cluster')
library(cluster)
cop_f3<-cophenetic(f3)
# 코페네틱 계수와 거리와의 상관계수구하기
cor(cop_f3, d)
#결합계수
agnes(z, method = 'ward')$ac
#3. 덴드로드그램 그리기
plot(f3, main='ward.D2 Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f3, k=6))
group_k6
rect.hclust(f3, k =6, border='red')




#평균거리
f4<-hclust(d, method = 'average')
#코페네틱 계수구하기
install.packages('cluster')
library(cluster)
cop_f4<-cophenetic(f4)
# 코페네틱 계수와 거리와의 상관계수구하기
cor(cop_f4, d)
#결합계수
agnes(z, method = 'average')$ac
#3. 덴드로드그램 그리기
plot(f4, main='average Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f4, k=6))
group_k6
rect.hclust(f4, k =6, border='red')


#중심 연결법
f5<-hclust(d, method ='centroid')
#코페네틱 계수구하기
install.packages('cluster')
library(cluster)
cop_f5<-cophenetic(f5)
# 코페네틱 계수와 거리와의 상관계수구하기
cor(cop_f5, d)
#결합계수
agnes(z, method = 'centroid')$ac
