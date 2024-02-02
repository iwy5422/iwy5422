install.packages('ggmap')
install.packages('mapproj')
install.packages('maps')
install.packages('ggsn')
install.packages('grid')
library('maps')
library('ggplot2' )
library('ggmap')
library('mapproj')
library(grid)
library('ggsn')
devtools::install_github('oswaldosantos/ggsn')



ggmap::register_google(key = "AIzaSyBYzei1HCdmEbMT6vm5fTW6h07U4Dtkh5g", write = TRUE)

df<- c(left = 116.708, bottom= 20.693, right= 116.74, top= 20.7155)
df1<-c(left = 111, bottom= 18, right=122.5 , top= 25.5)



donsha <- ggmap(get_stamenmap(df, zoom = 15, maptype = 'toner-lite', color = 'color', force = TRUE))
donsha

library('ggspatial')



df <- data.frame(lon = c(111, 111, 122.5, 122.5), lat = c(18, 25.5, 25.5, 18))



map<-get_map(location = df, zoom=16, 
             maptype = 'toner-lite', source = 'stamen', messaging = FALSE)
ggmap(map)

map1<- get_map(location = df1, zoom=6, 
             maptype = 'satellite', source = 'google')



ggmap(map1)


library('ggplot2')
library(ggspatial)
library(ggOceanMaps)


devtools::install_github("MikkoVihtakari/ggOceanMapsData")
devtools::install_github("MikkoVihtakari/ggOceanMaps")

##Taiwan
df <- data.frame(lon = c(119.5, 119.5, 122.5, 122.5), lat = c(21.8, 25.2, 25.2, 21.8))

basemap(data = df, bathymetry = FALSE,  grid.col = NA, land.col = 'grey90',land.border.col = 'black') 



