# Aleatória simples
# Tamanho da amostra
N <- 1000
Z <- 1.96
e <- 0.05
p <- 0.5
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Realizar a amostragem aleatória simples
amostra <- sample(1:N, n, replace = FALSE)

# Exibir a amostra
print(amostra)
length(amostra)

# Sistemática
# Tamanho da população
N <- 1000

# Tamanho da amostra desejada
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Calcular o intervalo de amostragem
k <- ceiling(N / n)

# Calcular a amostra sistemática
amostra_sistematica <- seq(from = 1, to = N, by = k)

# Exibir a amostra sistemática
print(amostra_sistematica)

length(amostra_sistematica)