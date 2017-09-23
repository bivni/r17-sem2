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

  print(flights,n = 10, width = Inf)

  ## Сохранение в программном представлении
## Конструируем данные для примера
set.seed(123)
example_ds <-  tibble(name=paste0("Mister",LETTERS[1:5]),
                      height=rnorm(n = 5,mean = 177,sd=15))

example_ds
# печатаем присваивание
dput(example_ds)
# удаляем 
rm("example_ds")
example_ds <- structure(list(name = c("MisterA", "MisterB", "MisterC", "MisterD", 
                                      "MisterE"), height = c(168.592865301717, 173.547337657751, 200.380624712237, 
                                                             178.057625871369, 178.939316027414)), .Names = c("name", "height"
                                                             ), class = c("tbl_df", "tbl", "data.frame"), row.names = c(NA, 
                                                                                                                        -5L))

barplot(height = example_ds$height,names.arg = example_ds$name)

## cat & paste
v1 <- letters[1:4]
v2 <- seq_along(v1)
v1
v2
cat(v1,v2)
paste(v1,v2)
paste0(v1,v2)
