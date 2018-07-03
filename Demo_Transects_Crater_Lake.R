### Crater Lake National Park transect map demonstration 

### Install and load two required packages, ggplot2 and ggridges
require(ggplot2)
require(ggridges)

### Read the CSV file created in Step 2
Crater_Lake <- read.csv ('*/Crater_Lake_Transects/Crater_Lake_grid500_6.csv', header=T)
Crater_Lake <- read.csv ('/Users/BaderWhite/Crater_Lake_Transects/Crater_Lake_grid500_6.csv', header=T)

### Call "Crater_Lake" to ensure data values load correctly
Crater_Lake

### Create the initial joyplot 
Crater_Lake_joyplot <- ggplot(Crater_Lake, aes(x = X, y = Y, group = Y, height = srtm_12_04)) + 
  geom_density_ridges(stat = "identity", scale = 6, fill="gray10", color = "white") 

Crater_Lake_joyplot

### Stylize the plot to add a title and remove axis labels, ticks, gridlines, etc.

Crater_Lake_joyplot + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
             panel.background = element_rect(fill = "gray10"), axis.line = element_blank(),
             axis.title.x=element_blank(),
             axis.text.x=element_blank(),
             axis.ticks.x=element_blank(),
             axis.title.y=element_blank(),
             axis.text.y=element_blank(),
             axis.ticks.y=element_blank()) + 
        annotate("text",  x=Inf, y = Inf, label = "CRATER LAKE NATIONAL PARK", vjust=35.5, hjust=1.5, 
           color = "white", size = 8)
