# Exercise 1 (R)
# Write a program to guess a number in between0 and 100!
# Hence the computer invents the number and the user = you tries to guess it! 

game <- function() {
  computer <- floor(runif(1, min=0, max=101))
  me <- readline(prompt="Your number: ")
  
  if (computer== me) {
    print("it's the same! you won.")
  } else {
    paste("Computer was ", computer, ". You lost.", sep="")
  }
}

game()

