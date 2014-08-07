# R script to generate plot1.png

plot1.data <- as.numeric(as.character(data$Global_active_power));

graphics.off()
par(ps = 12, cex = 1, cex.main = 1)
hist(plot1.data,
     main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)", 
     col = "red")

## save file
dev.copy(png, file = "plot1.png")
dev.off()