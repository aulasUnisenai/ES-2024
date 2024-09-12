library(plotly)

# Normal
set.seed(42)
alturas <- rnorm(1000, mean = 170, sd = 10)
plot_ly(x = ~alturas, type = "histogram")


# t 
set.seed(42)
t_dist <- rt(1000, df = 10)
plot_ly(x = ~t_dist, type = "histogram")


# Binomial
set.seed(42)
caras <- rbinom(1000, size = 10, prob = 0.5)
plot_ly(x = ~caras, type = "histogram")


# Qui-quadrado
set.seed(42)
chi_square <- rchisq(1000, df = 5)
plot_ly(x = ~chi_square, type = "histogram")

# Poisson
set.seed(42)
clientes <- rpois(1000, lambda = 4)
plot_ly(x = ~clientes, type = "histogram")

# Exponencial
set.seed(42)
tempos_espera <- rexp(1000, rate = 1/5)
plot_ly(x = ~tempos_espera, type = "histogram")

# Uniforme
set.seed(42)
sorteio <- runif(1000, min = 1, max = 100)
plot_ly(x = ~sorteio, type = "histogram")

# Bernoulli
set.seed(42)
bernoulli <- rbinom(1000, size = 1, prob = 0.5)
plot_ly(x = ~bernoulli, type = "histogram")