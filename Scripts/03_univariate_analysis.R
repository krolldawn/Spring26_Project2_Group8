# 03_univariate_analysis.R

library(tidyverse)
NHIS_clean <- read.csv("Data/NHIS_clean.csv")

summary(NHIS_clean$AGEP_A)
summary(NHIS_clean$WEIGHTLBTC_A)
summary(NHIS_clean$HEIGHTTC_A)

#Extra Stats
mean(NHIS_clean$AGEP_A, na.rm = TRUE)
sd(NHIS_clean$AGEP_A, na.rm = TRUE)

#Histograms
hist(NHIS_clean$AGEP_A, main="Age Distribution", xlab="Age")
hist(NHIS_clean$WEIGHTLBTC_A, main="Weight Distribution", xlab="Weight")
hist(NHIS_clean$HEIGHTTC_A, main="Height Distribution", xlab="Height")

ggplot(NHIS_clean, aes(x = AGEP_A)) +
  geom_histogram(bins = 30) +
  labs(title="Age Distribution", x="Age", y="Count")

ggplot(NHIS_clean, aes(x = WEIGHTLBTC_A)) +
  geom_histogram(bins = 30) +
  labs(title="Weight Distribution", x="Weight", y="Count")

ggplot(NHIS_clean, aes(x = HEIGHTTC_A)) +
  geom_histogram(bins = 30) +
  labs(title="Height Distribution", x="Height", y="Count")

#Boxplots
boxplot(NHIS_clean$AGEP_A, main="Age Boxplot")
boxplot(NHIS_clean$WEIGHTLBTC_A, main="Weight Boxplot")
boxplot(NHIS_clean$HEIGHTTC_A, main="Height Boxplot")

ggplot(NHIS_clean, aes(y = AGEP_A)) +
  geom_boxplot() +
  labs(title="Age Boxplot")

ggplot(NHIS_clean, aes(y = WEIGHTLBTC_A)) +
  geom_boxplot() +
  labs(title="Weight Boxplot")

ggplot(NHIS_clean, aes(y = HEIGHTTC_A)) +
  geom_boxplot() +
  labs(title="Height Boxplot")

#Qualitative Variables
#Frequency Tables
table(NHIS_clean$SEX_A)
table(NHIS_clean$HISPALLP_A)
table(NHIS_clean$EDUCP_recode)
table(NHIS_clean$PHSTAT_A)
table(NHIS_clean$LSATIS4R_A)

#Bar Plots
barplot(table(NHIS_clean$SEX_A), main="Sex Distribution")
barplot(table(NHIS_clean$HISPALLP_A), main="Race/Ethnicity")
barplot(table(NHIS_clean$EDUCP_recode), main="Education Level")
barplot(table(NHIS_clean$PHSTAT_A), main="Health Status")
barplot(table(NHIS_clean$LSATIS4R_A), main="Life Satisfaction")

ggplot(NHIS_clean, aes(x = factor(SEX_A))) +
  geom_bar() +
  labs(title="Sex Distribution", x="Sex", y="Count")

ggplot(NHIS_clean, aes(x = factor(HISPALLP_A))) +
  geom_bar() +
  labs(title="Race/Ethnicity", x="Category", y="Count")

ggplot(NHIS_clean, aes(x = factor(EDUCP_recode))) +
  geom_bar() +
  labs(title="Education Level", x="Category", y="Count")

ggplot(NHIS_clean, aes(x = factor(PHSTAT_A))) +
  geom_bar() +
  labs(title="Health Status", x="Category", y="Count")

ggplot(NHIS_clean, aes(x = factor(LSATIS4R_A))) +
  geom_bar() +
  labs(title="Life Satisfaction", x="Category", y="Count")

#Qualitative Variables
#Frequency tables
table(NHIS_clean$SEX_A)
table(NHIS_clean$HISPALLP_A)
table(NHIS_clean$EDUCP_recode)
table(NHIS_clean$PHSTAT_A)
table(NHIS_clean$LSATIS4R_A)

#Bar Plots
barplot(table(NHIS_clean$SEX_A),
        main = "Sex Distribution",
        xlab = "Sex", ylab = "Count")

barplot(table(NHIS_clean$HISPALLP_A),
        main = "Race/Ethnicity",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_clean$EDUCP_recode),
        main = "Education Level",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_clean$PHSTAT_A),
        main = "Health Status",
        xlab = "Category", ylab = "Count")

barplot(table(NHIS_clean$LSATIS4R_A),
        main = "Life Satisfaction",
        xlab = "Category", ylab = "Count")

ggplot(NHIS_clean, aes(x = factor(SEX_A))) +
  geom_bar() +
  labs(title = "Sex Distribution", x = "Sex", y = "Count")

ggplot(NHIS_clean, aes(x = factor(HISPALLP_A))) +
  geom_bar() +
  labs(title = "Race/Ethnicity", x = "Category", y = "Count")

ggplot(NHIS_clean, aes(x = factor(EDUCP_recode))) +
  geom_bar() +
  labs(title = "Education Level", x = "Category", y = "Count")

ggplot(NHIS_clean, aes(x = factor(PHSTAT_A))) +
  geom_bar() +
  labs(title = "Health Status", x = "Category", y = "Count")

ggplot(NHIS_clean, aes(x = factor(LSATIS4R_A))) +
  geom_bar() +
  labs(title = "Life Satisfaction", x = "Category", y = "Count")

