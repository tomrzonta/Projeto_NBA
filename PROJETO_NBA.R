install.packages("summarytools")
install.packages("dlookr")
install.packages("tidyverse")
install.packages("readxl")
install.packages("hms")

library(renv)
library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)
library(summarytools)
library(readxl)
library(knitr)
library(dlookr)
library(readxl)
library(hms)

renv::init()
renv::snapshot()

base_jogos <- read_excel("C:/Users/Pichau/Documents/RSTUDIO/NBA/nba_jogos.xlsx")

count(base_jogos)

kable(head(base_jogos,(10)))

base_jogos %>% dlookr::diagnose()

base_jogos$Hour <- as_hms(base_jogos$Hour)


