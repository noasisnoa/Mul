data(airquality)
summary(airquality)
df<-airquality
sum(!complete.cases(df$Solar.R))
df$Ozone_new<-ifelse(is.na(df$Ozone),0,df$Ozone)
summary(df)

print(mean(df$Ozone, na.rm = TRUE)-mean(df$Ozone_new))

s1<-(df$Wind - min(df$Wind))/(max(df$Wind)-min(df$Wind))
s2<-(df$Wind - mean(df$Wind))/sd(df$Wind)

df_new<-transform(df, minmax=s1, z=s2)
print(mean(df_new$minmax)-mean(df_new$z))

library(magrittr)
library(plyr)
library(dplyr)

df %>% group_by(Month=df$Month) %>% summarise(Temp = mean(Temp))
