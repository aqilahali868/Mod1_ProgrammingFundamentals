#-------------------------------------------#
# MB5370 : Techniques in Marine Science 1
# Programming Fundamnetals
# Aqilah Ali
# 30 Sept 2026

#Workshop 1: Introduction

#-------------------------------------------#
#R syntax and working in scripts ####
## This section intriduces us to R by running simple calculations inside a script

# header text ####
# breaking scripts into chunks n-----------# 
# a useful comment
## result

2 + 1 

1:30
#--------------------------------------------#
# Functions and Arguments ####

years_old <- 25.7
round(years_old) #rounds up
floor(years_old) #rounds down

years_old <- 25.765
round(years_old, 2) #comma after specifiy d.p.

args(round) #shows use of function and components involved 

#--------------------------------------------#
# Objects and Assignment Operator ####
# How data is stored in R and why it matters

# Object naming rules
# object always on left
# always use <- for assignment, not =
# no spaces, special symbols e.g, !?, or numbers at the start of an object name
# use descriptive names e.g., age_yrs rather than just age

#Saving a single valuse 
#  object_name <- value
coral_count <- 42

#Saving a vector of multiple fish lenghts (mm)
fish_length <- c(124, 152, 98, 221, 146)

#Debugging code
# e.g., Field survey data 
quadrat_area_m2 <- 0.25
number_of_quadrats <- 16
total_area_surveyed <- quadrat_area_m2 * number_of_quadrats

#Print result
print(total_area_surveyed)

#------------------------------------------------#
# Packages and Libraries ####

# e.g., install.packages("package_name")#installs package from internet
                                        #once installed do not need to install again

# library (package_name) #loads package into R session

# to load data
#   xlsx & XLConnect (for excel files)
#   foreign & haven (for statistical software files)

# to manipulate data
#   tidyverse, dplyr, lubricate, stringr & tidyr (for data wrangling)

# to visualise data 
#   ggplot2, ggvis, rgl, leaflets, diagrammeR, DT, lattice, googleVis (maps, tables, diagrams & plots) 

# to model data 
#   lme4/nlme (linear & non-linear mixed effects models)
#   mgcv/ glmmTMB (generalizes additive model)
#   glmnet (lasso and elastic net regression with cross validation)
#   tidymodels (collection for modelling & machine learning)
#   car (Anova)
#   caret (trainning regression and classification models)

#to report results 
#   R mardown, xtable, shiny

# for spatial data
#  maps, ggmap, sp, maptools

#for time series & financial data 
#   zoo, xts, quantmod

#-------------------------------------------------#
# Data Types ####

#Numeric (continuous e.g., mass, pH, temperature)
#Integer (whole numbers, e.g., count/ number of individuals)
#Character (text strings e.g, species name, location)
#Logical (Boolean values e.g., TRUE or FALSE, Present or Absent)

# Structure of object
# Assign variable values
site_name <- c("Heron_Island", "Orpheus Island", "Great Keppel Island")
transect_depth_m <- c(12.5, 15.2, 9.8, 22.1, 14.6)
bleaching_pres <- c(FALSE, TRUE, FALSE, TRUE, FALSE)

# Check using function class () i.e., data type
class(site_name)
class(transect_depth_m)
class(bleaching_pres)

# Check using function str () i.e., data type and variables/factors
str(site_name)
str(transect_depth_m)
str(bleaching_pres)

#-------------------------------------------------#
# Data Structures ####

# Elements : vector, list, matrix, dataframe, factors
#numberic vector
fish_length <- c(124, 152, 98, 221, 146)
#character vector
coral_spp <- c("Acropora", "Montipora", "Montastrea", "Porites", "Pocillopora", "Favia")

class(fish_length)
class(coral_spp)

mixed <- c(124, 152, 98, "Acropora", "Montipora", "Montastrea")
class(mixed) # R coerces the numeric values to character values

#lists can be mixed data types
notes <- list("Heron Island", 12.5, TRUE, c(124, 152, 98, 221, 146))
notes
#selecting a single element from a list use [] relative to index
notes[3]

# dataframes & tibbles
#   dataframes are rectangular data structures that can hold different data types in each columnn
#       columns must be samle type e.g. .csv, .xlsx, .txt/tsv
#   tibbles are a modern version of dataframes that are part of the tidyverse package

my_dataframe <- data.frame(site_no = c(1, 2, 3),
                site_name = c("Heron Island", "Orpheus Island", "Great Keppel Island"), 
                depth_m = c(12.5, 15.2, 9.8), 
                bleaching_pres = c(FALSE, TRUE, FALSE))
my_dataframe #shows full dataframe
str(my_dataframe) #shows structure

#to reasign datatype of variables
my_dataframe$site_no <- as.factor(my_dataframe$site_no)
str(my_dataframe) #shows site_no as a factor with 3 levels 

# NAs 
# no data in cell
# use na.omit to remove ROWS with NAs 
# use is.na to identify NAs in data









