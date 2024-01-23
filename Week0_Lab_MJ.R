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


















