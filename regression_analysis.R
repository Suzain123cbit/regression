
# regression_analysis.R

# Load built-in dataset 'mtcars'
data(mtcars)

# Linear regression model: mpg ~ wt
model <- lm(mpg ~ wt, data = mtcars)

# Summary of the model
summary(model)

# Plotting
png("regression_plot.png")
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight",
     xlab = "Weight", ylab = "Miles Per Gallon", pch = 19, col = "blue")
abline(model, col = "red")
dev.off()
