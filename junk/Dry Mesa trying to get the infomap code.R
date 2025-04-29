#make sure all the correct packages are installed then loaded 
#install pacjakes
install.packages("vtable")
install.packages("dplyr")
install.packages("devtools")
install.packages("ggpubr")
install.packages("permute")
install.packages("lattice")
install.packages("bipartite")

install.packages("plotly")
install.packages("geomnet")

# Load the packages
library(vegan)
library(picante)
library(knitr)
library(vtable)
library("dplyr")
library("ggplot2")
library("ggpubr")
library(permute)
library(lattice)
library(vegan)
library(statnet.common)
library(network)
library(sna)
library(bipartite)
library(picante)
library(knitr)
library(igraph)
library(plotly)
library("geomnet")



#dinosaur 5 time zones known
dinosaur5edgestime2<- read.csv("C:/Users/Cass Isa/Desktop/functional fauna/dinosaur5edgestime2.csv")

colnames(dinosaur5edgestime2) <- c("from", "to", "weight")

#Create graph for the algorithms
g <- graph_from_data_frame(dinosaur5edgestime2, directed = FALSE)

#https://www.rdocumentation.org/packages/NetworkToolbox/versions/1.4.2/topics/louvain
# louvain function


# Louvain
lc <- cluster_louvain(g)
membership(lc)
communities(lc)
plot(lc, g)


#dinosaur 5 climate/environment known
dinosaur5climateedges<- read.csv("C:/Users/Cass Isa/Desktop/functional fauna/dinosaur5climateedges.csv")

colnames(dinosaur5climateedges) <- c("from", "to", "weight")

#Create graph for the algorithms
g <- graph_from_data_frame(dinosaur5climateedges, directed = FALSE)

#https://www.rdocumentation.org/packages/NetworkToolbox/versions/1.4.2/topics/louvain
# louvain function


# Louvain
lc <- cluster_louvain(g)
membership(lc)
communities(lc)
plot(lc, g)



