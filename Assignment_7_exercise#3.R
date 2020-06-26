#Assignment7_Exercise-3

library("dplyr")

library("fueleconomy")

acuras <- filter(vehicles, make=="Acura", year==2015)
best_acura <-filter(acuras, hwy==max(hwy))
best_model <- select(best_acura, model)
best_model

best_model <- select(
  filter(
         filter(vehicles, make=="Acura", year==2015),
          hwy==max(hwy)),
                    model
)
best_model


best_model <- filter(vehicles, make=="Acura", year==2015) %>% filter(hwy==max(hwy)) %>% select(model)

first_best_model <- function(){
  acuras <- filter(vehicles, make=="Acura", year==2015)
  best_acura <-filter(acuras, hwy==max(hwy))
  best_model <- select(best_acura, model)
  
}

second_best_model <- function(){
  best_model <- select(
    filter(
      filter(vehicles, make=="Acura", year==2015),
      hwy==max(hwy)),
    model
  )
}

third_best_model <- function(){
  best_model <- filter(vehicles, make=="Acura", year==2015) %>% filter(hwy==max(hwy)) %>% select(model)
  
}

system.time(for (i in 1:1000){
  first_best_model()
})

system.time(for (i in 1:1000){
  second_best_model()
})

system.time(for (i in 1:1000){
  third_best_model()
})