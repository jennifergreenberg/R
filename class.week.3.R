#Jennifer Greenberg
#Week 3
library(tidyverse)
read_csv("NCBirths.csv")
nc<-read_csv("NCBirths.csv")
#makes a histogram
ggplot(nc, aes(x=weight))+
  geom_histogram(binwidth = 1, aes(color=I("black"), fill=I("purple")))
#don't do it this way, keep it in the gg function
ggplot(data = nc) + 
  geom_point(mapping = aes(x = weeks, y = weight, color="red"))

#changes the color based on the moms habit
ggplot(nc,aes(x=weeks,y=weight))+
  geom_point(aes(color=habit))
#makes three graphs

nc<-na.omit(nc)

ggplot(nc,aes(x=weeks,y=weight))+
  geom_point()+
  facet_wrap(~habit)
#^^scales="free" lets you make the X axis different
#^^^use the tilda as an equal sign
#use two equals because IF it equals full term you do it
nc.full.tern<-filter(nc,premie=="full term")

ggplot(nc.full.term,aes(x=weeks,y=weight))+
  geom_point()+
  facet_wrap(~habit)
#select(nc,mage,premie)
#select with a minus takes it out
#includes "age" shows all the variables with that in the title
summarise(nc,mothersaverageage=mean(mage))
  totalvisits=sum
  