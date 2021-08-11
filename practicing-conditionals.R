# Practicing conditionals and loops ----

# Packages required
library(tidyverse)

# Refresh boolean operators
pinyon_pine <- 14
lodgepole_pine <- 46

pinyon_pine == 10
lodgepole_pine > pinyon_pine

pinyon_pine != 25

# Create some basic if statements

burrito <- 2.4

if (burrito > 2) {
  print("I love burritos!")
} else{
  print("I want a burrito")
}

# I got carried away in my for loop exploration in R.

sbc_observations <- c("blue whale",
                      "gray whale",
                      "whale",
                      "gray wale",
                      "dolphin",
                      "sea lion",
                      "blue whale")


for (i in seq_along(sbc_observations)) {
  if (str_detect(sbc_observations[i], "whale")) {
    print("We have a whale!")
  } else {
    print("not a whale :(")
  }
}

# Back with the work the class was doing

pika <- 89

if (pika > 60) {
  print("large pika")
} else {
  print("smoll boy")
}

# Create a string `food <- "I love enchiladas!"`
# Write an if-else statement sthat prints "Yay burritos if the string "burritos is detected in 'food', or prints "What about burritos?" otherwise.

food <- "I love veggie burritos!"

if (str_detect(food, "burritos")) {
  print("yay burritos")
} else {
  print("What about burritos?")
}

# Create a new stored object called `marmot` with a value of 2.8. Write an if, else if, else statement that returns small marmot if marmot is less than 0.5, medium marmot if marmot is grater than or equal to 0.5 & less than 3, and large marmot if marmot is greater than or equal to 3. 

marmot <- 5 

if(marmot < 0.5) {
  print("Small marmot!")
} else if (marmot >= 0.5 & marmot < 3) {
  print("Medium marmot!")
} else if (marmot >= 3) {
  print("Large marmot!")
} else{
  print("Is that a marmot?")
}


# Writing a switch statement 

species <- "lion"

switch (
  species,
  "lion" = print("roar!"),
  "cat" = print("meow"),
  "bird" = print("tweet"),
  "owl" = print("screech"),
  "fox" = print("obnoxious"),
  print("something else")
)


