---
title: "cm007 Exercises: Practice with `dplyr`"
output: 
  html_document:
    keep_md: true
    theme: paper
---

<!---The following chunk allows errors when knitting--->




```r
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(gapminder))
suppressPackageStartupMessages(library(tsibble))
suppressPackageStartupMessages(library(DT)) #To use datatable()
```


This worksheet contains exercises aimed for practice with `dplyr`. 


1. (a) What's the minimum life expectancy for each continent and each year? (b) Add the corresponding country to the tibble, too. (c) Arrange by min life expectancy.


```r
gapminder %>% 
  group_by(continent, year) %>% 
  summarize(min_life = min(lifeExp), #calc min life expectancy for continent/year
            country = country[lifeExp == min_life]) %>% #corresponding country
  arrange(min_life) %>% #arrange by increasing life expectancy
  datatable()
```

<!--html_preserve--><div id="htmlwidget-c6ae897a5be4faebe9d5" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-c6ae897a5be4faebe9d5">{"x":{"filter":"none","data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60"],["Africa","Asia","Africa","Asia","Asia","Africa","Asia","Africa","Asia","Africa","Africa","Africa","Asia","Africa","Americas","Africa","Africa","Africa","Asia","Africa","Americas","Asia","Asia","Asia","Asia","Americas","Europe","Asia","Americas","Americas","Europe","Americas","Americas","Europe","Americas","Europe","Americas","Americas","Europe","Americas","Europe","Americas","Europe","Europe","Europe","Europe","Oceania","Oceania","Europe","Oceania","Oceania","Europe","Oceania","Oceania","Oceania","Oceania","Oceania","Oceania","Oceania","Oceania"],[1992,1952,1952,1957,1977,1957,1962,1962,1967,1967,1972,1997,1972,1977,1952,1982,2002,2007,1982,1987,1957,1987,1992,1997,2002,1962,1952,2007,1967,1972,1957,1977,1982,1962,1987,1967,1992,1997,1972,2002,1977,2007,1982,1987,1992,1997,1952,1957,2002,1962,1967,2007,1972,1977,1982,1987,1992,1997,2002,2007],[23.599,28.801,30,30.332,31.22,31.57,31.997,32.767,34.02,34.113,35.4,36.087,36.088,36.788,37.579,38.445,39.193,39.613,39.854,39.906,40.696,40.822,41.674,41.763,42.129,43.428,43.585,43.828,45.032,46.714,48.079,49.923,51.461,52.098,53.636,54.336,55.089,56.671,57.005,58.137,59.507,60.916,61.036,63.108,66.146,68.835,69.12,70.26,70.845,70.93,71.1,71.777,71.89,72.22,73.84,74.32,76.33,77.55,79.11,80.204],["Rwanda","Afghanistan","Gambia","Afghanistan","Cambodia","Sierra Leone","Afghanistan","Sierra Leone","Afghanistan","Sierra Leone","Sierra Leone","Rwanda","Afghanistan","Sierra Leone","Haiti","Sierra Leone","Zambia","Swaziland","Afghanistan","Angola","Haiti","Afghanistan","Afghanistan","Afghanistan","Afghanistan","Bolivia","Turkey","Afghanistan","Bolivia","Bolivia","Turkey","Haiti","Haiti","Turkey","Haiti","Turkey","Haiti","Haiti","Turkey","Haiti","Turkey","Haiti","Turkey","Turkey","Turkey","Turkey","Australia","New Zealand","Turkey","Australia","Australia","Turkey","New Zealand","New Zealand","New Zealand","New Zealand","New Zealand","New Zealand","New Zealand","New Zealand"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>continent<\/th>\n      <th>year<\/th>\n      <th>min_life<\/th>\n      <th>country<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[2,3]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

2. Calculate the growth in population since the first year on record _for each country_ by rearranging the following lines, and filling in the `FILL_THIS_IN`. Here's another convenience function for you: `dplyr::first()`. 

```
mutate(rel_growth = FILL_THIS_IN) %>% 
arrange(FILL_THIS_IN) %>% 
gapminder %>% 
DT::datatable()
group_by(country) %>% 
```




3. Determine the country that experienced the sharpest 5-year drop in life expectancy, in each continent, sorted by the drop, by rearranging the following lines of code. Ensure there are no `NA`'s. Instead of using `lag()`, use the convenience function provided by the `tsibble` package, `tsibble::difference()`:

```
drop_na() %>% 
ungroup() %>% 
arrange(year) %>% 
filter(inc_life_exp == min(inc_life_exp)) %>% 
gapminder %>% 
mutate(inc_life_exp = FILL_THIS_IN) %>% 
arrange(inc_life_exp) %>% 
group_by(country) %>% 
group_by(continent) %>% 
knitr::kable()
```





