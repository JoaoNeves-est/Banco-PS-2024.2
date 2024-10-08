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
  #drop.na(Medals) %>% #Somente medalhistas
  select(!Season) #Não será mais necessária.

#Transformar kilogramas em libras.
data$Weight <- data$Weight * 2.20462262

#Corrigir casos com país-n:
data <- data %>%
  mutate(Team = gsub("-\\d+", "", Team))

#Criar bancos separados:
setwd("C:/Users/Faculdade/OneDrive - unb.br/Área de Trabalho/Planilha para PS")

#bancos com NA
Ano2000 <- data %>%
  filter(Year == 2000) %>%
  select(!Year)
write_xlsx(Ano2000, "2000_NA.xlsx")

Ano2004 <- data %>%
  filter(Year == 2004) %>%
  select(!Year)
write_xlsx(Ano2004, "2004_NA.xlsx")

Ano2008 <- data %>%
  filter(Year == 2008) %>%
  select(!Year)
write_xlsx(Ano2008, "2008_NA.xlsx")

Ano2012 <- data %>%
  filter(Year == 2012) %>%
  select(!Year)
write_xlsx(Ano2012, "2012_NA.xlsx")

Ano2016 <- data %>%
  filter(Year == 2016) %>%
  select(!Year)
write_xlsx(Ano2016, "2016_NA.xlsx")

# Ano2000 <- data %>%
#   filter(Year == 2000) %>%
#   select(!Year)
# write_xlsx(Ano2000, "2000.xlsx")
# 
# Ano2004 <- data %>%
#   filter(Year == 2004) %>%
#   select(!Year)
# write_xlsx(Ano2004, "2004.xlsx")
# 
# Ano2008 <- data %>%
#   filter(Year == 2008) %>%
#   select(!Year)
# write_xlsx(Ano2008, "2008.xlsx")
# 
# Ano2012 <- data %>%
#   filter(Year == 2012) %>%
#   select(!Year)
# write_xlsx(Ano2012, "2012.xlsx")
# 
# Ano2016 <- data %>%
#   filter(Year == 2016) %>%
#   select(!Year)
# write_xlsx(Ano2016, "2016.xlsx")