## read Excel file
### Datafiles from this tutiorial:
### https://beanumber.github.o/sds192/lab-import.html#data_from_an_excel_file

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

# read_csv can directly import URL's, but read_excel requires you to first download it

# basename() takes the file name from the URL
file_name <- basename(data_url)

# This is the old way
download.file(url=data_url,
              destfile=paste('./cm011/', file_name))

# Task: Change above to use the "here::here" package
download.file(url=data_url,
              destfile=here::here("cm011", file_name))

## Lets you load in Excel files
library(readxl) #comes with tidyverse, but may need its own loading

## Assign the imported data to a tibble
## dplyr also has a here() function, so using here::here is good practice
philanthropists <- read_excel(here::here("cm011", file_name), 
                              trim_ws = TRUE) #trim white space
View(philanthropists)

#TODO for firas: find a way to remove leading white space from column #4

## Load another file downloaded from STAT 545 Issues
mri_file <- here::here("cm011", "Firas-MRI.xlsx") #create path name

mri <- read_excel(mri_file) #load entire file
View(mri)

mri <- read_excel(mri_file, range="A1:L12") #load selected cells from file
View(mri)

mri <- mri[,-10] #remove column 10
View(mri)

mri <- mri %>% 
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_no',
               values_to = 'value')
View(mri)
