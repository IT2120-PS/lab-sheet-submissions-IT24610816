setwd("D:\\Y2 S1\\PS\\Labsheets\\Lab 09")
getwd()

#Question 1
#part 1
y <-rnorm(25, mean = 45, sd = 2)
y

#part 2 
# Null hypothesis H0: mu = 46
# Alternative hypothesis H1: mu < 46
t_test_result <- t.test(y, mu=46, alternative="less")
print(t_test_result)
