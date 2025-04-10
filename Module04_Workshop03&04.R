library(tidyverse)
summary(QFish)
QFish <-
  read.csv("../data/export.csv")

install.packages("janitor")
library(janitor)
row_to_names(row_number = 1) 
clean_names()
head(QFish)


library(janitor)


cleaned_data <- row_to_names(dat = QFish, row_number = 1)
clean_names(QFish)

head (QFish)

QFish <- row_to_names(cleaned_data, row_number = 1)

library(dplyr)

cleaned_data <- cleaned_data %>%
  row_to_names(row_number = 1)
library(dplyr)
library(janitor)

# Load the data
QFish <- read.csv("Home/Documents/JCU/Techniques in Marine Science 1/github/MB5370_Module_04/data/QFish.csv", header = FALSE)


# Convert row 1 to headers and then clean them
cleaned_data <- cleaned_data %>%
  row_to_names(row_number = 1) %>%
  clean_names()
library(combine_stats)
install.packages(combine_stats)


foo_foo <- little_bunny()

foo_foo_1 <- hop(foo_foo, through = forest)
foo_foo_2 <- scoop(foo_foo_1, up = field_mice)
foo_foo_3 <- bop(foo_foo_2, on = head)

bop(
  scoop(
    hop(foo_foo, through = forest),
    up = field_mice
  ), 
  on = head
)

foo_foo %>%
  hop(through = forest) %>%
  scoop(up = field_mice) %>%
  bop(on = head)


install.packages("sf") 
install.packages("terra")
install.packages("tmap")

#load into R library
library(tidyverse)
library(sf) # simple features
library (terra) # for raster
library(tmap) # Thematic maps are geographical maps in which spatial data distributions are visualized

library(readr)
dat <- read_csv("data-for-course/copepods_raw.csv")
dat

#Check coordinates
library(ggplot2)
ggplot(dat) + 
  aes(x = longitude, y = latitude, color = richness_raw) +
  geom_point()

# look at the richness data
ggplot(dat, aes(x = latitude, y = richness_raw)) + 
  stat_smooth() + 
  geom_point()

#turn our data into a ‘simple features collection’
sdat <- st_as_sf(dat, coords = c("longitude", "latitude"), 
                 crs = 4326)
crs4326 <- st_crs(4326)
crs4326 # look at the whole CRS
crs4326$Name # pull out just the name of the crs
[1] "WGS 84"
crs4326$wkt # crs in well-known text format

sdat
plot(sdat["richness_raw"])
plot(sdat)

#using tmap
tm_shape(sdat) + 
  tm_dots(col = "richness_raw")



