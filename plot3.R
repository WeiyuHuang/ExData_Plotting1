# R script to generate plot3.png

plot.data.x <- 1:2880
plot.data.y1 <- as.numeric(as.character(data$Sub_metering_1))
plot.data.y2 <- as.numeric(as.character(data$Sub_metering_2))
plot.data.y3 <- as.numeric(as.character(data$Sub_metering_3))

graphics.off()
par(ps = 12, cex = 1, cex.main = 1)
plot(plot.data.x, plot.data.y1, ylab = "Energy sub metering",
     xlab = "", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot.data.x, plot.data.y1, col = "black")
lines(plot.data.x, plot.data.y2, col = "red")
lines(plot.data.x, plot.data.y3, col = "blue")

legend("topright", lty = 1, text.width = 800, col = c("black", "red", "blue"), 
       y.intersp = 0.8, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## save file
dev.copy(png, file = "plot3.png")
dev.off()