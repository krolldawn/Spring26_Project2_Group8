##Day 2: Data Cleaning & Management
#Task 1: Variable Selection & Missing Value Check
library(tidyverse) #loaded tidyverse

NHIS_Data_2021 <- read.csv("Data/NHIS_Data_2021.csv") #loaded dataset
summary(NHIS_Data_2021) #loaded summary of data to see range of variables

NHIS_vars <- NHIS_Data_2021 %>% #created subset of cleaned dataset with only needed variables
  select(AGEP_A, WEIGHTLBTC_A, HEIGHTTC_A, SEX_A, HISPALLP_A, EDUCP_A, PHSTAT_A, LSATIS4R_A) %>% #selected only variables needed
  filter( #used filter to remove missing values per codebook #! removes unwanted values
    AGEP_A >= 18 & AGEP_A <= 85 & !AGEP_A %in% c(97, 98, 99), #Age range from 18-85
    WEIGHTLBTC_A >= 100 & WEIGHTLBTC_A <= 299 & !WEIGHTLBTC_A %in% c(996, 997, 998, 999), #Weight range from 100-299
    HEIGHTTC_A >= 59 & HEIGHTTC_A <= 76 & !HEIGHTTC_A %in% c(96, 97, 98, 99), #Height range from 59-76
    SEX_A >= 1 & SEX_A <= 2 & !SEX_A %in% c(7, 9), #Sex range from 1-2
    HISPALLP_A >= 1 & HISPALLP_A <= 7 & !HISPALLP_A %in% c(97, 98, 99), #Race/ethnicity range from 1-7
    EDUCP_A >= 0 & EDUCP_A <= 10 & !EDUCP_A %in% c(97, 98, 99), #Education range from 0-10
    PHSTAT_A >= 1 & PHSTAT_A <= 5 & !PHSTAT_A %in% c(7, 8, 9), #General health status range from 1-5
    LSATIS4R_A >= 1 & LSATIS4R_A <= 4 & !LSATIS4R_A %in% c(7, 8, 9)) #Quality of life range from 1-4

summary(NHIS_vars) #loaded summary of cleaned data to verify all variables are within codebook range & missing values removed

#Task 2: Recoding Variables
NHIS_clean <- NHIS_vars %>% #created final cleaned dataset and added recoded education variable
  mutate(
    EDUCP_recode = case_when( #recoded education variable based on NHIS codebook categories
      EDUCP_A >= 0 & EDUCP_A <= 3 ~ 1, #0-3 Less Than High School
      EDUCP_A == 4 ~ 2, #4 High School Graduate
      EDUCP_A >= 5 & EDUCP_A <= 7 ~ 3, #5-7 Some College Education
      EDUCP_A >= 8 & EDUCP_A <= 10 ~ 4 #8-10 College Graduate or Better
    )
  )

NHIS_clean <- NHIS_clean %>%
  mutate(
    EDUCP_recode = factor( #converted recoded education variable into a labeled factor
      EDUCP_recode,
      levels = c(1, 2, 3, 4), #defined category order
      labels = c( #labeled each category in order
        "Less than High School",
        "High School Graduate",
        "Some College Education",
        "College Graduate or Better"
      )
    )
  )

summary(NHIS_clean) #loaded summary of cleaned dataset to confirm recoding worked.

write.csv(NHIS_clean, "Data/NHIS_clean.csv", row.names = FALSE) #saved final cleaned dataset as CSV file
