library(tidyverse)
library(palmerpenguins)


penguin_summary <- penguins %>% 
  group_by(species, island) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE), 
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))


penguin_subset <- penguins %>% 
  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year) #select is choosing which columns to keep or not keep


## Now, a for loops intro practice 

animal <- c("cat", "bird", "dog", "dogs", "elephant", "zebra", "dog")

for (i in seq_along(animal)){
  if(animal[i] == "dog"){
    print("We love dogs!")
  }
  else if(animal[i] == "cat"){
    print("We really prefer dogs to cats!")
  }
  else{
    print("Why is it not a dog?")
  }
}


species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
age_human <- c(3, 8, 4, 6, 12, 18)
animal_ages <- vector(mode = "numeric", length = length(species))

for(i in seq_along(species)){
  if(species[i] == "dog"){
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant"){
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat"){
    animal_age <- age_human[i] * 4.7
  }
  animal_ages[i] <- animal_age
}
animal_ages



# Calcualte the mean value of each column in a data frame 

mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for(i in seq_along(mtcars)){
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars[i] <- mean_val
}
mean_mtcars

## Same thing with apply()

apply(X = mtcars, 2, mean, na.rm = TRUE)

map_df(.x = mtcars, .f = mean)
