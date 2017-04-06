# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles<-c("blue","red","green","yellow","blue","black")

# Use the `sample` function to select a single marble
selection<-sample(marbles,1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame<-function(guess){
  marbles<-c("blue","red","green","yellow","blue","black")
  selection<-sample(marbles,1)
  if(guess==selection){
    return("You Got It!")
  }else{
    return("Sorry, it's wrong.")
  }
}


# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
guess<-"yellow"
MarbleGame<-function(guess){
  marbles<-c("blue","red","green","yellow","blue","black")
  selection<-sample(marbles,1)
  if(guess==selection){
    return(1)
    print("You Got It!")
  }else{
    return(0)
    print("Sorry, it's wrong.")
  }
}
bonus= replicate(10000,MarbleGame("yellow"),simplify="array")
mean(bonus)
