# Example - 1
# The syntax for pie chart : pie(x, labels, radius, main, col, clockwise)
# Create data for the graph.
x <- c(2100, 6234, 1100, 5300)
labels <- c("Chennai", "Hyderabad", "Delhi", "Mumbai")

# Give the chart file a name.
png(file = "city1.png")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()

# Example - 2
# Create data for the graph.
x <- c(2100, 6234, 1100, 5300)
labels <- c("Chennai", "Hyderabad", "Delhi", "Mumbai")

# Give the chart file a name.
png(file = "city_color1.jpg")

# Plot the chart.
pie(x,labels, main = "City pie chart", col = rainbow(length(x)))

# Save the file.
dev.off()


# Example - 3
# Create data for the graph.
x <- c(2100, 6234, 1100, 5300)
labels <- c("Chennai", "Hyderabad", "Delhi", "Mumbai")
piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "city_color_leg1.jpg")

# Plot the chart.
pie(x,labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("Chennai", "Hyderabad", "Delhi", "Mumbai"), cex = 0.8,
       fill = rainbow(length(x)))

# Save the file.
dev.off()

# Example - 4: Bar chart
# The syntax is barplot(H,xlab,ylab,main, names.arg,col)
# Create the data for the chart
H <- c(21,33,28,10,49)

# Give the chart file a name
png(file = "barchart1.png")

# Plot the bar chart 
barplot(H)

# Save the file
dev.off()

# Example - 5 : Bar charts
# Create the data for the chart
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")

# Give the chart file a name
png(file = "barchart_months_revenue1.png")

# Plot the bar chart 
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="blue",
        main="Revenue chart",border="red")

# Save the file
dev.off()

# Example - 6: Bar Charts
colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
#2,9,3,11,9
#4,8,7,3,12
#5,2,8,10,11

# Give the chart file a name
png(file = "barchart_stacked1.png")

# Create the bar chart
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)

# Add the legend to the chart
legend("topleft", regions, cex = 1.3, fill = colors)

# Save the file
dev.off()

# Example - 7: box blots
# The syntax of box plot is: boxplot(x, data, notch, varwidth, names, main)
View(mtcars)
input <- mtcars[,c('mpg','cyl')]
print(head(input))
# Give the chart file a name.
png(file = "boxplot1.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

# Save the file.
dev.off()

# Example - 8:
# Give the chart file a name.
png(file = "boxplot_with_notch1.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars,xlab = "Number of Cylinders",  ylab = "Miles Per Gallon", 
        main = "Mileage Data", notch = TRUE, varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)
# Save the file.
dev.off()

# Example - 9: Histograms
# The syntax of histograms: hist(v,main,xlab,xlim,ylim,breaks,col,border)
# Create data for the graph.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)

# Give the chart file a name.
png(file = "histogram1.png")

# Create the histogram.
hist(v,xlab = "Weight",col = "yellow",border = "blue")

# Save the file.
dev.off()

# Example - 10:
# Create data for the graph.
v <- c(9,13,21,8,36,22,12,41,31,33,19)

# Give the chart file a name.
png(file = "histogram_lim_breaks1.png")

# Create the histogram.
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),
     breaks = 5)

# Save the file.
dev.off()

# Example - 11: Line graphs
# The syntax of line charts: plot(v,type,col,xlab,ylab)
# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
png(file = "line_chart3.jpg")

# Plot the bar chart. 
plot(v,type = "o")

# Save the file.
dev.off()

# Example - 12
# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
png(file = "line_chart_label_colored1.jpg")

# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

# Save the file.
dev.off()

# Example - 13:
# Create the data for the chart.
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

# Give the chart file a name.
png(file = "line_chart_2_lines1.jpg")

# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", 
     main = "Rain fall chart")

lines(t, type = "o", col = "blue")

# Save the file.
dev.off()

# Example - 14: Scatter plots
# The syntax is : plot(x, y, main, xlab, ylab, xlim, ylim, axes)

input <- mtcars[,c('wt','mpg')]
print(head(input))

# Get the input values.
input <- mtcars[,c('wt','mpg')]

# Give the chart file a name.
png(file = "scatterplot1.png")

# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

# Save the file.
dev.off()

# Example - 16:
# Give the chart file a name.
png(file = "scatterplot_matrices1.png")

# Plot the matrices between 4 variables giving 12 plots.

# One variable with 3 others and total 4 variables.

pairs(~wt+mpg+disp+cyl,data = mtcars,
      main = "Scatterplot Matrix")

# Save the file.
dev.off()

