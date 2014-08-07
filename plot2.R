# R script to generate plot2.png

plot2.data.x <- 1:2880
plot2.data.y <- as.numeric(as.character(data$Global_active_power))

graphics.off()
par(ps = 12, cex = 1, cex.main = 1)
plot(plot2.data.x, plot2.data.y, ylab = "Global Active Power (kilowatts)",
     xlab = "", type = "n", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(plot2.data.x, plot2.data.y)

## save file
dev.copy(png, file = "plot2.png")
dev.off()