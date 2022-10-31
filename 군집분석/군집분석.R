#군집분석 비지도 학습, Y의 값이 없다. 
#1.유클리드 (직선거리),

#최단연결법
 
data(USArrests)
head(USArrests)
#merder:살인, assault: 폭행, UrbanPop:인구 집중도. Rape: 강간

#1.유클리드언 
d<-dist(USArrests, method = 'euclidean')
#2.군집분석 수행, 최단거리 연결법
f1<-hclust(d, method ='single')
#3. 덴드로드그램 그리기
plot(f1, main='sibgle Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')


#2.군집분석 수행, 최장거리 연결법
f1<-hclust(d, method ='complete')
#3. 덴드로드그램 그리기
plot(f1, main='complete Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')


#2.군집분석 수행, 와드법 연결법
f1<-hclust(d, method ='ward')
#3. 덴드로드그램 그리기
plot(f1, main='ward Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')


#2.군집분석 수행, 평균거리 연결법
f1<-hclust(d, method ='average')
#3. 덴드로드그램 그리기
plot(f1, main='average Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')


#2.군집분석 수행, 중심 연결법
f1<-hclust(d, method ='centroid')
#3. 덴드로드그램 그리기
plot(f1, main='centroid Cluster Dendrogram')
#4.6개의 그룹으로 나누기
group_k6<-(cutree(f1, k=6))
group_k6
rect.hclust(f1, k =6, border='red')


