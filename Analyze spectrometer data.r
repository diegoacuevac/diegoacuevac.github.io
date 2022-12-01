#####Analyze spectrometer data#####

install.packages(c("installr", "ggplot2", "plyr", "readr", "GGally", "dplyr", "mlbench", "pavo", "colourvision", "tidyr", "tidyverse", "rgl", "scales", 
    "RColorBrewer", "viridis", "paletteer", "ggtext", "magick")) #Install packages, delete the first "#" to install packages

install.packages("pavo")

installed.packages() #Check if packages are installed

library(pavo)
library(installr)
library(dplyr)
library(tidyverse) #pipe %>%  is included in this package
library(ggplot2)
library(tidyr)
library(GGally)
library(rgl)
library(mlbench)
library(scales)
library(viridis) #simple and versatile go-to option for coloring graphs
library(ggtext) #important package for formatting ggtitle and text

grallaria = getspec(
    where = "/Users/diegocueva/Library/CloudStorage/GoogleDrive-dacuevac@unal.edu.co/My Drive/Manacus/spectro/throat/",
    ext = "txt",
    lim = c(300, 700),
    decimal = "."
)
head(grallaria)

bygralla <- gsub("-.*$","",names(grallaria))

head(bygralla)
png(filename="grallaria.png", width=3000, height=3000, units="px", res=300)
aggplot(grallaria, bygralla,
    shadecol = c("#000000","#ff00bf","#00c1b4"), alpha = 0.17,
    lcol = c("#000000","#ff00bf","#00c1b4"),
    lwd = 1,
    ylim = c(0, 40),
    clim = c(300, 700),
    xlab=expression(lambda * " (nm)"),
) 
dev.off()