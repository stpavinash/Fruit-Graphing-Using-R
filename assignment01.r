

#Loads the data file
applebananapear = read.csv('AppleBananaPear.csv') 
#Selects only the data with "Spain" from dataset, column == Area
spainapplebananapear = applebananapear[grep("Spain", applebananapear$Area),]
#Selects only the data from Spain where the Item is a "Pear"
spainpear = spainapplebananapear[grep("Pear", spainapplebananapear$Item),]
#Plots years on the x axis and amount of pears produced on y axis
plot(spainpear$Year, spainpear$Value)
#Connects the points with a line
lines(spainpear$Year, spainpear$Value)

