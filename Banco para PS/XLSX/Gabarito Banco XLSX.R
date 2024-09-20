library(tidyverse)
library(readxl)

#Atribuir o ano a cada um dos bancos:
X2000 <- read_excel("XLSX/Olimpiadas 2000 - 2016 (Verão).xlsx", 
                    sheet = "Sydney")
X2000$Year <- 2000

X2004 <- read_excel("XLSX/Olimpiadas 2000 - 2016 (Verão).xlsx", 
                    sheet = "Athina")
X2004$Year <- 2004

X2008 <- read_excel("XLSX/Olimpiadas 2000 - 2016 (Verão).xlsx", 
                    sheet = "Beijing")
X2008$Year <- 2008

X2012 <- read_excel("XLSX/Olimpiadas 2000 - 2016 (Verão).xlsx", 
                    sheet = "London")
X2012$Year <- 2012

X2016 <- read_excel("XLSX/Olimpiadas 2000 - 2016 (Verão).xlsx", 
                    sheet = "Rio de Janeiro")
X2016$Year <- 2016

#Ajustar o nome das colunas:
colnames(X2000) <- c("Name","Sex","Age","Height","Weight","Team","Sport","Event","Medal","Year")
colnames(X2004) <- c("Name","Sex","Age","Height","Weight","Team","Sport","Event","Medal","Year")
colnames(X2008) <- c("Name","Sex","Age","Height","Weight","Team","Sport","Event","Medal","Year")
colnames(X2012) <- c("Name","Sex","Age","Height","Weight","Team","Sport","Event","Medal","Year")
colnames(X2016) <- c("Name","Sex","Age","Height","Weight","Team","Sport","Event","Medal","Year")

#Transformar peso em númerico:
X2000$Height <- as.numeric(X2000$Height)
X2004$Height <- as.numeric(X2004$Height)
X2008$Height <- as.numeric(X2008$Height)
X2012$Height <- as.numeric(X2012$Height)
X2016$Height <- as.numeric(X2016$Height)

#Fazer a junção dos bancos:
banco_unido <- bind_rows(X2000,X2004,X2008,X2012,X2016)

#Converter de libras para kilogramas:
banco_unido$Weight <- banco_unido$Weight / 2.20462262
