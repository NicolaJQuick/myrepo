#find the start of the CEE
CEEStart <- kahuna %>% 
  filter(status == 'start')


#load the Gm182 data
gm182 <-read.csv("2018-11-27_Gm182-Start-CEE-Locations-Kahuna.csv")%>% 
  mutate(status = 'NouserPoints')

#load the gm182 data user points
UPgm182 <-read.csv("2018-11-27_Gm182-UserPoints-Start-CEE-Locations-Kahuna.csv")%>% 
  mutate(status = 'userPoints')

# Minimal Wrangling of the data
gmpts <- bind_rows(gm182, gm182UP)
colnames(gmpts) <- c('trackNum', 'time', 'longitude', 'latitude', 'status')
