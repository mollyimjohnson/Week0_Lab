#Week0 Lab
##############
#Download packages needed
if(!require("adegenet")) install.packages("adegenet")
if(!requireNamespace("popgraph", quietly = TRUE))
{
  install.packages(c("RgoogleMaps", "geosphere", "proto", "sampling", 
                     "seqinr", "spacetime", "spdep"), dependencies=TRUE)
  remotes::install_github("dyerlab/popgraph")
}
if(!requireNamespace("gstudio", quietly = TRUE)) remotes::install_github("dyerlab/gstudio")


library(adegenet)
library(gstudio)
library(LandGenCourse)
library(tibble)
library(here)
library(vcfR)
library(pinfsc50)
library(utils)

install.packages("pinfsc50")
install.packages("vcfR")

library(pinfsc50)
library(vcfR)

#Swirl tutorial for Week1 Lab
require(swirl)
swirl()
Molly
1
1

data(ralu.loci)

View(ralu.loci)
1

write.csv(ralu.loci, file = "ralu.loci.csv", row.names=FALSE)

Frogs <- read.csv("ralu.loci.csv")

head(Frogs)
3

class(Frogs)

lapply(Frogs, class)
4
Frogs$A

as.factor(Frogs$A)

Frogs2 <- read_csv("ralu.loci.csv")

lapply(Frogs2, class)

?read_population

1
2
Frogs[1:5,3:10]
1
#introducing gstudio package
Frogs.gstudio <- read_population(path="ralu.loci.csv", type="separated",
locus.columns=c(3:10))

Frogs.gstudio <- read_population("ralu.loci.csv", "separated", c(3:10))

class(Frogs.gstudio)

lapply(Frogs.gstudio, class)

Frogs.gstudio[1,3]

#introducing adegenet package
help(df2genind)
?df2genind
1

Frogs.genind <- df2genind(X = Frogs2[,3:10], sep = ":", pop =
 as.factor(Frogs2$Pop), NA.char = NA, ploidy = 2, type = "codom")

Frogs.genind

head(Frogs.genind@tab)

dim(Frogs.genind@tab)

#want this graded?
#I checked and did not see our institution listed, so I'm assuming not
2
#Week1 Lab Tutorial Completed
#############################






