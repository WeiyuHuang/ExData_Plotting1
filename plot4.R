# R script to generate plot4.png

plot.data.x <- 1:2880

plot1.data.y <- as.numeric(as.character(data$Global_active_power))
plot2.data.y <- as.numeric(as.character(data$Voltage))
plot3.data.y1 <- as.numeric(as.character(data$Sub_metering_1))
plot3.data.y2 <- as.numeric(as.character(data$Sub_metering_2))
plot3.data.y3 <- as.numeric(as.character(data$Sub_metering_3))
plot4.data.y <- as.numeric(as.character(data$Global_reactive_power))

graphics.off()
par(mfrow = c(2, 2), mar = c(5.1, 4.1, 2.1, 2.1), ps = 12, cex = 0.85, cex.main = 0.85)

# subplot 1
plot(plot.data.x, plot1.data.y, ylab = "Global Active Power",
     xlab = "", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot.data.x, plot1.data.y)

# subplot 2
plot(plot.data.x, plot2.data.y, ylab = "Voltage",
     xlab = "datetime", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot.data.x, plot2.data.y)

# subplot 3
plot(plot.data.x, plot3.data.y1, ylab = "Energy sub metering",
     xlab = "", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot.data.x, plot3.data.y1, col = "black")
lines(plot.data.x, plot3.data.y2, col = "red")
lines(plot.data.x, plot3.data.y3, col = "blue")

legend("topright", lty = 1, bty = "n", text.width = 1500, 
       y.intersp = 0.7, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", 
                  "Sub_metering_3"))

# subplot 4
plot(plot.data.x, plot4.data.y, ylab = "Global_reactive_power",
     xlab = "datetime", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot.data.x, plot4.data.y)

## save file
dev.copy(png, file = "plot4.png")
dev.off()