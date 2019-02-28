#Histogram for all variables in a dataset mtcars.
#Write a program to create histograms for all columns
library(tidyr)
library(ggplot2)
mtcars %>% gather() %>% head()
ggplot(gather(mtcars), aes(value)) +
  geom_histogram(bins = 10) +
  facet_wrap(~key, scales = 'free_x')

#Check the probability distribution of all variables in mtcars.

mtcars
par(mfrow=c(3,4))
prob <- function(prob){
  x <- sort(prob)
  hx <- dnorm(prob)
  p <- plot(x, hx, type="l")
}

lapply(mtcars[2:12,], prob)

#Write a program to create boxplot for all variables.
par(mfrow=c(3,4))
prob <- function(prob){
  x <- sort(prob)
  hx <- dnorm(prob)
  p <- plot(x, hx, type="l")
}
lapply(mtcars[2:12,], boxplot)
