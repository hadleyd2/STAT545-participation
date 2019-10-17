library("tidyverse")
gapminder_csv <- read_csv('./cm011/gapminder_sum.csv') #the dot means current directory
View(gapminder_csv)

ls() #outputs all variables
rm(list=ls()) #doesnt detach loaded packages while clearing global environments
# Instead, use Session -- Restart R

# Package to help with directories
install.packages("here")
library(here)
ls()

#Equivalent to writing './test/tes/te/t/gapminder_sum.csv'
#Can be run on any platform (Windows, Mac OS, etc.)
here::here("test", "tes", "te", "t", "gapminder_sum.csv") 

# 
set_here()