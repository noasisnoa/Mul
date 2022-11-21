x<-79


if(x >= 60){
  print('합격')
}else{
  print('불합격')
}
ifelse(x >=60, '합격', '불합격')

score<-c(10, 20, 30)

if(score >= 15){
  print('인사부')
}else{
  print('총무부')
}

## R의 특징이다.
ifelse(score >15, '인사부', '총무부')

No<-c(1, 2, 3, 4)
Name<-c("Apple", "Peach","Banana", "Grape")
Price<-c(500, 200, 100, 50)
Qty<-c(6, 2, 4, 7)

Sales<-data.frame(No, Name, Price, Qty)
class(Scales)
Group<-ifelse(Price >= 150, 'A', 'B')
Group

Sales$Group<-Group
Sales
print(2*3)


#2단 반복문 
for(i in 1:9){
  print(paste('2 x',i,'=',2*i))
}

#2~5단 출력
for(dan in 2:5){
  for(i in 1:9 ){
    print(paste(dan, 'x', i,'=', dan*i))
  }
}

#Hello 5개 출력
for(i in 1:5){
  print('Hello')
}

#score에 있는 원소들이 i에 들어갔다. 
score<-c(10, 20, 30)
for(i in score){
  
  if(i >= 15){
    print('인사부')
  }else{
    print('총무부')
  }
  
}

