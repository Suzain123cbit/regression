# regression_analysis.R

# Dataset 1: mtcars
data(mtcars)
model1 <- lm(mpg ~ wt, data = mtcars)
summary(model1)

png("regression_plot1_mtcars.png")
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight (mtcars)",
     xlab = "Weight", ylab = "Miles Per Gallon", pch = 19, col = "blue")
abline(model1, col = "red")
dev.off()

# Dataset 2: iris
data(iris)
model2 <- lm(Sepal.Length ~ Petal.Length, data = iris)
summary(model2)

png("regression_plot2_iris.png")
plot(iris$Petal.Length, iris$Sepal.Length, main = "Sepal Length vs Petal Length (iris)",
     xlab = "Petal Length", ylab = "Sepal Length", pch = 19, col = "darkgreen")
abline(model2, col = "red")
dev.off()
