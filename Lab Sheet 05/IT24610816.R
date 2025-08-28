setwd("C:\\Users\\IT24610816\\Desktop\\IT24610816")

#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times
attach(Delivery_Times)
attach(Delivery_Times)

#Q2
histogram <- hist(Delivery_Times[[1]], main = "Histogram for Delivery Times", 
                  breaks = seq(20, 70, length = 10), right = FALSE)

#Q3
#The histogram appears to be approximately symmetric but slightly right-skewed.
#Most of the delivery times are concentrated in the middle range (around 30–50 minutes).

#Q4
breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

cum.freq <- cumsum(freq)

new <- c()
for (i in 1:length(breaks)) {
  if (i == 1) {
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i - 1]
  }
}
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times",
     xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))
cbind(Upper = breaks, CumFreq = new)
