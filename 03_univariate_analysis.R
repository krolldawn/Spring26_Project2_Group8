# 03_univariate_analysis.R

library(tidyverse)
NHIS_Data_2021 <- read.csv("Data/NHIS_Data_2021.csv")

summary(NHIS_Data_2021$AGEP_A)
summary(NHIS_Data_2021$WEIGHTLBTC_A)
summary(NHIS_Data_2021$HEIGHTTC_A)

#Extra Stats
mean(NHIS_Data_2021$AGEP_A, na.rm = TRUE)
sd(NHIS_Data_2021$AGEP_A, na.rm = TRUE)

#Histograms
hist(NHIS_Data_2021$AGEP_A, main="Age Distribution", xlab="Age")
hist(NHIS_Data_2021$WEIGHTLBTC_A, main="Weight Distribution", xlab="Weight")
hist(NHIS_Data_2021$HEIGHTTC_A, main="Height Distribution", xlab="Height")

ggplot(NHIS_Data_2021, aes(x = AGEP_A)) +
  geom_histogram(bins = 30) +
  labs(title="Age Distribution", x="Age", y="Count")

ggplot(NHIS_Data_2021, aes(x = WEIGHTLBTC_A)) +
  geom_histogram(bins = 30) +
  labs(title="Weight Distribution", x="Weight", y="Count")

ggplot(NHIS_Data_2021, aes(x = HEIGHTTC_A)) +
  geom_histogram(bins = 30) +
  labs(title="Height Distribution", x="Height", y="Count")

#Boxplots
boxplot(NHIS_Data_2021$AGEP_A, main="Age Boxplot")
boxplot(NHIS_Data_2021$WEIGHTLBTC_A, main="Weight Boxplot")
boxplot(NHIS_Data_2021$HEIGHTTC_A, main="Height Boxplot")

ggplot(NHIS_Data_2021, aes(y = AGEP_A)) +
  geom_boxplot() +
  labs(title="Age Boxplot")

ggplot(NHIS_Data_2021, aes(y = WEIGHTLBTC_A)) +
  geom_boxplot() +
  labs(title="Weight Boxplot")

ggplot(NHIS_Data_2021, aes(y = HEIGHTTC_A)) +
  geom_boxplot() +
  labs(title="Height Boxplot")

#Qualitative Variables
#Frequency Tables
table(NHIS_Data_2021$SEX_A)
table(NHIS_Data_2021$HISPALLP_A)
table(NHIS_Data_2021$EDUCP_A)
table(NHIS_Data_2021$PHSTAT_A)
table(NHIS_Data_2021$LSATIS4R_A)

#Bar Plots
barplot(table(NHIS_Data_2021$SEX_A), main="Sex Distribution")
barplot(table(NHIS_Data_2021$HISPALLP_A), main="Hispanic Status")
barplot(table(NHIS_Data_2021$EDUCP_A), main="Education Level")
barplot(table(NHIS_Data_2021$PHSTAT_A), main="Health Status")
barplot(table(NHIS_Data_2021$LSATIS4R_A), main="Life Satisfaction")

ggplot(NHIS_Data_2021, aes(x = factor(SEX_A))) +
  geom_bar() +
  labs(title="Sex Distribution", x="Sex", y="Count")

ggplot(NHIS_Data_2021, aes(x = factor(HISPALLP_A))) +
  geom_bar() +
  labs(title="Hispanic Status", x="Category", y="Count")

ggplot(NHIS_Data_2021, aes(x = factor(EDUCP_A))) +
  geom_bar() +
  labs(title="Education Level", x="Category", y="Count")

ggplot(NHIS_Data_2021, aes(x = factor(PHSTAT_A))) +
  geom_bar() +
  labs(title="Health Status", x="Category", y="Count")

ggplot(NHIS_Data_2021, aes(x = factor(LSATIS4R_A))) +
  geom_bar() +
  labs(title="Life Satisfaction", x="Category", y="Count")

#Qualitative Variables
#Frequency tables
table(NHIS_Data_2021$SEX_A)
table(NHIS_Data_2021$HISPALLP_A)
table(NHIS_Data_2021$EDUCP_A)
table(NHIS_Data_2021$PHSTAT_A)
table(NHIS_Data_2021$LSATIS4R_A)

#Bar Plots
barplot(table(NHIS_Data_2021$SEX_A),
        main = "Sex Distribution",
        xlab = "Sex", ylab = "Count")

barplot(table(NHIS_Data_2021$HISPALLP_A),
        main = "Hispanic Status",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_Data_2021$EDUCP_A),
        main = "Education Level",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_Data_2021$PHSTAT_A),
        main = "Health Status",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_Data_2021$LSATIS4R_A),
        main = "Life Satisfaction",
        xlab = "Category", ylab = "Count")

ggplot(NHIS_Data_2021, aes(x = factor(SEX_A))) +
  geom_bar() +
  labs(title = "Sex Distribution", x = "Sex", y = "Count")

ggplot(NHIS_Data_2021, aes(x = factor(HISPALLP_A))) +
  geom_bar() +
  labs(title = "Hispanic Status", x = "Category", y = "Count")

ggplot(NHIS_Data_2021, aes(x = factor(EDUCP_A))) +
  geom_bar() +
  labs(title = "Education Level", x = "Category", y = "Count")

ggplot(NHIS_Data_2021, aes(x = factor(PHSTAT_A))) +
  geom_bar() +
  labs(title = "Health Status", x = "Category", y = "Count")

ggplot(NHIS_Data_2021, aes(x = factor(LSATIS4R_A))) +
  geom_bar() +
  labs(title = "Life Satisfaction", x = "Category", y = "Count")

