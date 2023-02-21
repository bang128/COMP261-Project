library(tidyverse)
setwd("/Users/bangpham/Documents/Spring 2023/COMP 261")
df = read_csv("Highway-Rail_Grade_Crossing_Accident_Data.csv")
data = select(df, Temperature, Visibility, 'Weather Condition')

drop_na(data)
colnames(data) <- c('temperature','visibility','weather')
ggplot(data, aes(temperature)) + 
  geom_histogram(fill = "dodgerblue") + 
  xlim(-50, 150) +
  labs(title = 'Temperature vs. Number of Crashes',
       x = 'Temperature (F)',
       y = 'Number of Crashes')

ggplot(data, aes(visibility)) + 
  geom_bar(fill = "dodgerblue") + 
  labs(title = 'Visibility vs. Number of Crashes',
       x = 'Visibility',
       y = 'Number of Crashes')

ggplot(data, aes(weather)) + 
  geom_bar(fill = "dodgerblue") + 
  labs(title = 'Weather vs. Number of Crashes',
       x = 'Weather',
       y = 'Number of Crashes')

