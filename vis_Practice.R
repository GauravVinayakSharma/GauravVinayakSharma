
#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
data()
airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns

airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality[1,])
airquality$Wind

###########Summary of the data#########
summary(airquality$Temp)
summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind, type = "p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "b") # p: points, l: lines,b: both
plot(airquality$Ozone, xlab = 'No of Instances', 
     ylab = 'ozone Concentration', main = 'Ozone levels in NY city',
     col = 'blue')


# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'red',horiz = T,axes=T)


#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Temp,main="Boxplot")
boxplot(airquality$Temp,main="Boxplot")

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
boxplot(airquality[,1:4],main='Multiple')


##Home work
e_quakes<-datasets::quakes