#Assignment-7_Exercise-1

install.packages("devtools")
devtoos::instal_github("hadley/fueleconomy")
library(fueleconomy)

#You should now have access to the 'vehicles' data frame
#You can use 'View()' to inspect it
View(vihicles)
dim(vihicles)

#Select the different manufacturers (makes) of the cars in this data set.
#Save this vactor in a variable
makes <- vehicles$make
head(makes)

#Use the 'unique()' function to determine how many different car manufactures are represented by the data set
unique(makes)
length((unique(makes)))

#Filter the data set for vehicles manufactures in 1997
cars_1997 <- vehicles[vehicle$year=="1997"]

cars_1997 <- cars_1997[order(cars_1997$hwy),]

cars_1997$average <- (cars_1997$cty + cars_1997$hwy)/2

head(cars_1997$average)

two_wheel_20_mpg <- vehicles[vehicles$drive == "2-Wheel Drive"& vehicles$cty-20,]

worst_hwy <- two_wheel_20_mpg$id[two_wheel_20_mpg$hwy==min(two_wheel_20_mpg$hwy)]

make_year_filter <- function(make_choice, year_choice){
  filtered <- vehicles[vehicles$make==make_choice & vehicles$year==year_choice,]
  filtered[filtered$hwy==max(filtered$hwy), "mode"]
}

make_year_filter("Honda",1995)

