## Group Project 2- Kevin Roldan, Linda Zavala, Negeen Agharokh 

#Day 1: Project Setup & Data Import 
- Course: Statistical Programming in Health Data Management and Visualization  
- Institution: California State University, Fullerton  
#Project Objectives:
The objective of this project is to analyze the 2021 NHIS dataset using R to develop skills in data cleaning, management, and visualization. We aim to perform univariate, bivariate, and multivariate analyses to better understand relationships between demographic and health-related variables. This project also emphasizes collaboration using GitHub and clear communication of public health data findings.
This project uses NHIS 2021 data to explore variables such as age, height, weight, education level, health status, and life satisfaction. Using R and ggplot2, we created multiple visualizations and statistical analyses to identify patterns and relationships in the dataset.
This project analyzes data from the 2021 National Health Interview Survey (NHIS) to explore patterns in demographic and health-related variables. Using R, we performed data cleaning, recoding, and statistical analyses to examine relationships between age, height, weight, education, health status, and life satisfaction. The goal is to apply data visualization and programming skills to better understand public health trends.

=======
library(readr)
NHIS_Data_2021 <- read.csv("Data/NHIS_Data_2021.csv")
View(NHIS_Data_2021)
str(NHIS_Data_2021)
>>>>>>> fc4727f05e60ad682fcb81971dd834f6ed8da72c
summary(NHIS_Data_2021)
head(NHIS_Data_2021)

Completed by all group members

#Day 2: Data Cleaning & Management
Kevin Roldan took charge of this day to effectively complete data

#Day 3: Univariate & Bivariate Analysis & Visualization
Negeens Task was to set up Day three's plots and graphs

#Day 4: Multivariate Analysis & Report Drafting 
Linda Zavala took charge of the Multivariate Analysis and the final report

#Day 5: Finalizing, Communicating & Submission
