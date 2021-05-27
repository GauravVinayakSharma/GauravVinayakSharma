data()
airquality<-datasets::airquality
View(airquality)
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
df<-airquality[,-6] 
summary(airquality[1,])
airquality$Wind
summary(airquality$Temp)  
summary(airquality)  
summary(airquality$Wind)
plot(airquality$Wind)
plot(airquality)
plot(airquality$Wind, type= "b")
plot(airquality$Ozone, xlab = 'No of Instances', 
     ylab = 'ozone Concentration', main = 'Ozone levels in NY city',
     col = 'blue')
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'red',horiz = T,axes=T)
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'blue',horiz = F,axes=T)
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')
boxplot(airquality$Temp,main="Boxplot")
boxplot(airquality[,1:4],main='Multiple')
