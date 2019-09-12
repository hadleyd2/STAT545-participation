number * 2
number <- 5+2
number * 2
a * 2

(times <- c(60, 40, 33, 15, 20, 55, 35)) #Declare and print vector of commute times in minutes
times / 60 #Division is performed element-wise

mean(times) #Returns scalar
sqrt(times) #Element-wise
range(times) #Returns vector of length 2

times < 30 #Logical vector; TRUE is returned for elements less than 30
times == 20 #Logical vector; TRUE is returned for elements equal to 20
times != 20 #Logical vector; TRUE is returned for elements not equal to 20
times > 20 & times < 50 #TRUE for values in (20, 50); & compared two logical vectors and returns
                        #TRUE when each logical vector has TRUE in the same number element
times < 20 | times > 50 #| is the "or" command
which(times < 30) #Returns index for elements less than 30
sum(times < 30) #FALSE=0 and TRUE=1: counts number of TRUE's

# This is a comment
5 + 2 #This is an inline comment

# Subsetting:
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[1:5]
times[times < 30]
times
times[times > 50] <- 50 #Replaces all numbers larger than 50 with 50
times
times[8] <- NA
times
mean(times, na.rm = TRUE) #Name arguments that are not the first argument
mean(times, 0, TRUE) #Matches order of arguments (avoid this)
mean(na.rm=TRUE, x=times) #Specifying arguments ignore default order
?mean

mtcars
str(mtcars) #Structure of data.frame
names(mtcars) #Column names
mtcars$mpg #miles per gallon column returned as a vector
