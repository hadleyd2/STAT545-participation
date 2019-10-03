library(gapminder)
library(ggplot2)

ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point(alpha = 0.1) + #points with transparency 0.1 (1 is black)
  scale_x_log10("GDP per capita", labels = scales::dollar_format()) + #log scale for x-axis
  theme_bw() +
  ylab("Life Expectancy") #label the y-axis
