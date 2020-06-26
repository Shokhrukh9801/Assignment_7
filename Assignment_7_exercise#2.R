#Assignment7_exercise-2

#install.packages("devtools")
#devtoos::instal_github("hadley/fueleconomy")
library(fueleconomy)

install.packages("dplyr")
library("dplyr")

makes <- select(vehicles, make)
head(makes)

nrow(distinct(vehicles, make))
lenth(unique(makes$make))

cars_1997 <-filter(vehicles, year==1997)
head(cars_1997)

cars_1997 <- arrange(cars_1997, hwy)

cars_1997 <- mutate(cars_1997, average==(hwy+cty)/2)

two_wheel_20_mpg <- filter(vehicles, drive="2-Wheel Drive", cty>20)

filtered <- filter(two_wheel_20_mpg, hwy==min(hwy))
worst_hwy <-select(filtered, id)
worst_hwy

make_year_filter <- function(make_choice, year_choice){
  filtered <-filter(vehicles, make==make_choice, year==year_choice)
  filtered <- filter(filtered, hwy==max(hwy))
  selected <- select(filtered, model)
  selected
}

make_year_filter("Honda", 1995)

make_year_filter("Honda", 1997)
