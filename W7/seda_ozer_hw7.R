phenodata<-read.table("C:/Users/sedao2/Desktop/introduction to R programming/class_notes/HW4/pheno.txt", head = T)

#1 A histogram with h1, h2, h3, and h4. (Tip: you need to transform this data in a long format)

library(tidyverse)
library(ggplot2)
library(dplyr)

transformedpheno <- pivot_longer(phenodata, cols = c('h1','h2','h3','h4'), 
                                 names_to = "names", values_to = "values")

ggplot(transformedpheno, aes(x = names, y = values))+
  geom_histogram(stat = "identity", col="purple")+
  labs(x = "Measurement", y = "Value")+
  ggtitle("Histogram of h variables")

#2 Using the variable "Y" as the response variable, create a boxplot for each value of row and range. Make one plot for row and another plot for range using a facet option.

q2 <- pivot_longer(phenodata, row:range, names_to = "type", values_to = "values")

ggplot(q2, aes(x = as.factor(values), y = Y)) + 
  geom_boxplot(fill = "purple", color = "gray") +
  ylab("Y") + xlab("Values") +
  facet_wrap(~type, scales = "free")

#3 Calculate the mean of each TAXA, filter the TAXA with a mean greater than 12, and create a barplot with the error bar on top of it (use the value 1 as the standard error).

q3 <- phenodata %>%
  group_by(TAXA) %>%
  summarise(mean = mean(Y, na.rm = TRUE)) %>%
  filter(mean > 12)

ggplot(q3, aes(x = TAXA, y = mean)) + 
  geom_bar(position = position_dodge(), stat = "identity", fill = "purple", color = "gray") + 
  geom_errorbar(aes(ymin = mean - 1, ymax = mean + 1)) + 
  ylab("Mean") + xlab("TAXA") +
  theme(axis.text.x = element_text(angle = 30))+
  ggtitle("TAXAs with a mean greater than 12")
