library(tidyverse)
library(gapminder)

## Load dataset
gapminder

## write gapminder to csv file
write_csv(gapminder, './cm011/gapminder.csv')
View(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

View(gapminder_sum)
write_csv(gapminder_sum, './cm011/gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x = continent,
             y = ave_lifeExp)) +
  geom_point() +
  theme_bw()