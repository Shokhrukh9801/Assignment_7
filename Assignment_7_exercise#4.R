#Assignment7_Exercise-4

install.packages("nycflights13")
library(nycflights13)
library(dplyr)

nrow(flights)
ncol(flights)
colnames(flights)
?flights

flights <- mutate(flights, gain_in_air == arr_delay-dep_delay)
calnames(flights)

flights <-arrange(flights, -gain_in_air)
View(head(flights))

flights %>% mutate(gain_in_air==arr_delay-dep_delay) %>% arrange(-gain_in_air)

hist(flights$gain_in_air)

mean(flights$gain_in_air, na.rm = TRUE)

to_sea <-flights %>% select(origin, dest, gain_in_air) %>% filter(dest=="SEA")
View(head(to_sea))

mean(to_sea$gain_in_air, na.rm = TRUE)

filter(flights, origin=="JFK", dest=="SEA") %>% summarise(
  avg_air_time <- mean(air_time,na.rm = TRUE),
  max_air_timev <- max(air_time, na.rm = TRUE),
  min_air_time <- min(air_time, na.rm=TRUE)
)








