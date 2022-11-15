#####Analyze spectrometer data#####

#install.packages(c("installr", "ggplot2", "plyr", "readr", "GGally", "dplyr", "mlbench", "pavo", "colourvision", "tidyr", "tidyverse", "rgl", "scales", 
#    "RColorBrewer", "viridis", "paletteer", "ggtext", "magick")) #Install packages, delete the first "#" to install packages

installed.packages() #Check if packages are installed

library(installr)
library(dplyr)
library(tidyverse) #pipe %>%  is included in this package
library(pavo)
library(ggplot2)
library(tidyr)
library(GGally)
library(rgl)
library(mlbench)
library(scales)
library(viridis) #simple and versatile go-to option for coloring graphs
library(ggtext) #important package for formatting ggtitle and text

grallaria = getspec(
    where = "/Users/diegocueva/Library/CloudStorage/GoogleDrive-dacuevac@unal.edu.co/My Drive/Manacus/spectro/grallaria2/",
    ext = "txt",
    lim = c(300, 700),
    decimal = "."
)
?getspec()
plot(grallaria)
png("test.png", 300, 600)
getwd()
