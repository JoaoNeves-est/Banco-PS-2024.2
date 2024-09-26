library(tidyverse)
library(writexl)

setwd("C:/Users/Faculdade/OneDrive - unb.br/Área de Trabalho/Planilha para PS")
athlete_events <- read_csv("athlete_events.csv")

data <- athlete_events %>%
  select(Name, #Selecionar as variáveis que vão ser usadas:
         Sex, 
         Age,
         Height,
         Weight,
         Team,
         Year,
         Season,
         Sport,
         Event, 
         Medal) %>%
  filter(Year %in% c(2000,2004,2008,2012,2016)) %>% #Somente os anos de 2000-2016.
  filter(Season == "Summer") %>% #Somente verão.
  select(!Season) #Não será mais necessária.

#Corrigir casos com país-n:
data <- data %>%
  mutate(Team = gsub("-\\d+", "", Team))

write.csv(data,"Banco_dashboard.csv")
