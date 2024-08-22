library(tidyverse)
library(wbstats)

indicator <- 'NY.GDP.PCAP.CD'

gdp_nz <- wb_data(country = "NZ", indicator = indicator, start_date = 1960, end_date = 2024)

dim(gdp_nz)
head(gdp_nz)

ggplot(gdp_nz, aes(x = date, y = NY.GDP.PCAP.CD)) +
  geom_point() + 
  geom_line() +
  labs(title = "GDP per capita (current US$) - New Zealand") +
  xlab("Year") +
  ylab("GDP per capita (current US$)") +
  scale_x_continuous(breaks=seq(1960,2020,5)) +
  theme_minimal() +
  theme(panel.grid.minor.x = element_blank())
