
library(dplyr)
library(ggplot2)
library(ggvis)

wb <- warpbreaks

wb %>%
  ggplot(aes(x=breaks)) +
    geom_histogram()

wb %>% 
  ggvis(x=~breaks) %>% 
  layer_histograms(width = input_slider(1, 35, step = 1, label = "Bin Width"), 
                   center = 10, 
                   fill := "#E74C3C") 

wb %>% 
  ggplot(aes(x=breaks, colour=tension)) +
    geom_density(size=1)
