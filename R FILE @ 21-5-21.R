install.packages("dplyr")
library(dplyr)
flights<-read.csv("D:/EXCELR/Munmun Bhagat/flights")
head(flights)
tail(flights)
flights
head(flights,10)
tail(flights,3)
flights<-data.frame(flights)
glimpse(flights)
select(flights,dep_time,arr_time,flight)
filter(flights,month==1,day==1,origin=="EWR")
filter(flights,carrier=="AA "|carrier=="UA")
flights %>%
  select(carrier,dep_delay)%>%
  filter(dep_delay>60)
flights %>%
  select(carrier,dep_delay)%>%
  arrange(dep_delay)
flights<-flights%>%mutate(speed=distance/air_time*60)
flights %>%
  group_by(dest,arr_delay)%>%
  summarise(avg_delay = mean(arr_delay,na.rm=TRUE))
flights %>%
  group_by(month,day)%>%
  summarise(flight_count = n())%>%
  arrange(desc(flight_count))
