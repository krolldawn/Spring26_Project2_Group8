#04_bivariate_analysis.R

library(tidyverse)
NHIS_clean <- read.csv("Data/NHIS_clean.csv")

#Quantitative vs. Qualitative:
boxplot(AGEP_A ~ SEX_A,
        data = NHIS_clean,
        main = "Age by Sex",
        xlab = "Sex",
        ylab = "Age")

boxplot(AGEP_A ~ EDUCP_recode,
        data = NHIS_clean,
        main = "Age by Education Level",
        xlab = "Education Level",
        ylab = "Age")

ggplot(NHIS_clean, aes(x = factor(SEX_A), y = AGEP_A)) +
  geom_boxplot() +
  labs(title = "Age by Sex",
       x = "Sex",
       y = "Age")

ggplot(NHIS_clean, aes(x = factor(EDUCP_recode), y = AGEP_A)) +
  geom_boxplot() +
  labs(title = "Age by Education Level",
       x = "Education Level",
       y = "Age")

#Qualitative vs. Qualitative:
ggplot(NHIS_clean, 
       aes(x = factor(PHSTAT_A), fill = factor(LSATIS4R_A))) +
  geom_bar(position = "dodge") +
  labs(title = "General Health vs Life Satisfaction",
       x = "General Health",
       y = "Count",
       fill = "Life Satisfaction")

#Quantitative vs. Quantitative:
plot(NHIS_clean$HEIGHTTC_A,
     NHIS_clean$WEIGHTLBTC_A,
     main = "Height vs Weight",
     xlab = "Height",
     ylab = "Weight")

ggplot(NHIS_clean, aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A)) +
  geom_point(alpha = 0.5) +
  labs(title = "Height vs Weight",
       x = "Height",
       y = "Weight")

cor(NHIS_clean$HEIGHTTC_A,
    NHIS_clean$WEIGHTLBTC_A,
    use = "complete.obs")

#There is a strong positive relationship between height and weight, indicating that as height increases, weight also tends to increase. The high correlation coefficient (r = 0.77) suggests a strong linear association between the two variables.