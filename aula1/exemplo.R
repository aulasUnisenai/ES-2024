install.packages("plotly")

library(plotly)

x <- c(1:100)
random_y <- rnorm(100, mean = 0)
data <- data.frame(x, random_y)

fig <- plot_ly(data, x = ~x, y = ~random_y, type = 'scatter', mode = 'lines')

fig
