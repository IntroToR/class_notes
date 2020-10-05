
Using the data flights from the package nycflights13, do the following:
  
#1- obtain the range, mean, and median of the variable “distance” (dst)
```{r}
install.packages("nycflights13")
library("nycflights13")
library(dplyr)
library(ggplot2)
data_flights <- (flights)
print(range(data_flights$distance))
#17 to 4983
print(mean(data_flights$distance))
#1039.913
print(median(data_flights$distance))
#872
```

#2- combine the airlines (also available from nycflights13) with the flights data in a single file.
```{r}
merge <- merge(flights,airlines, by = "carrier")
write.table(combined, file = "mergeddata.csv")
head(combined)
```

#3- save a file including only American Airlines (Carrier = AA) ordered by arr_delay.
```{r}
american<- combined %>%
  filter(carrier=="AA") %>%
  arrange(desc(arr_delay))
write.table(american)
```

#4- create boxplots of dep_delay by carrier (one boxplot for each carrier).
```{r}
Boxplot1 <- ggplot(combined, aes(x=carrier, y=dep_delay))+
  geom_boxplot(fill = "aquamarine3", outlier.color = "chocolate", na.rm = T)+
  ggtitle("dep_delay by Carrier")+
  labs(x = "Carrier", y = "Departure Delay")+
  theme_minimal()
Boxplot1
```

#5- find what is the month with the highest arr_delay. Show this in a graph.
```{r}
delayeachmonth <- select(combined, arr_delay, month) %>%
  na.omit() %>%
  group_by(month) %>% 
  summarize(mean_arr_delay = mean(arr_delay))
delayeachmonth
```

#7 which is July which does not make since because icy months should have the longest delay but hey this could be in the tropics.
```{r}
plot = ggplot(delayeachmonth, aes(x = month, y = mean_arr_delay)) +
  geom_col(width = 0.8) +
  ggtitle('Arrival Delays by Month') + 
  labs(x = 'Month', y = 'Arrival Delays (min)') +
  scale_x_discrete(name="Month", limits= c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"))
plot
```
