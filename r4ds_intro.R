# pkgs needes for examples in book 
# http://r4ds.had.co.nz
install.packages(c("tidyverse"))
install.packages(c("nycflights13", "gapminder", "Lahman"))
# 
library(readxl)
help(package="readxl")
wksheet=read_excel("sales.xlsx",sheet = "sales")
str(wksheet)
library(tidyverse)
help(package="tidyverse")

# какие пакеты входят в tidyverse?
tidyverse_packages(include_self = T)
tidyverse_update()

help(package="lubridate")
library(magrittr)
library(dplyr)
# library(nycflights13)
# можно не подгружая библиотеку обратиться к ее переменной 
# package::variable или package::function()

View(nycflights13::flights)

library(nycflights13)
?data
data() # посмотреть стандартные наборы данных

View(flights)
# оператор pipe %>%  нужен для последовательного 
# применения функций к данным
flights %>% 
  print(n = 10, width = Inf)
nycflights13::flights %>% 
  View()

dput(mtcars)
