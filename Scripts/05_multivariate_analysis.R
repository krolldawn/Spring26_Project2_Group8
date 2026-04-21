# Select variables and remove missing values
multi_data <- NHIS_clean %>%
  select(HEIGHTTC_A, WEIGHTLBTC_A, SEX_A, EDUCP_recode, PHSTAT_A, AGEP_A) %>%
  na.omit()

# Convert variables to factors 
multi_data$SEX_A <- as.factor(multi_data$SEX_A)
multi_data$EDUCP_recode <- as.factor(multi_data$EDUCP_recode)
multi_data$PHSTAT_A <- as.factor(multi_data$PHSTAT_A)

# Scatterolot of height vs weight, colored by sex and faceted by education 
ggplot(multi_data, aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A, color = SEX_A)) +
  geom_point(alpha = 0.6) + # points with transparency 
  facet_wrap(~ EDUCP_recode) + #split by education level
  labs(
    title = "Height vs Weight by Sex and Education",
    x = "Height (cm)",
    y = "Weight (lbs)",
    color = "Sex"
  ) +
  theme_minimal() # clean theme
