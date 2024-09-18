### 1
# Tamanho da população
N <- 10000

# Proporção estimada (40%)
p <- 0.40

# Erro máximo permitido (5%)
e <- 0.05

# Nível de confiança (95%)
Z <- qnorm(1 - 0.05 / 2)

# Cálculo do tamanho da amostra
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Exibir o tamanho da amostra
cat("Tamanho da amostra necessário:", n, "\n")

# Selecionar a amostra aleatória simples
set.seed(123)  # Para garantir reprodutibilidade
amostra_aleatoria <- sample(1:N, n)

# Exibir os IDs selecionados
print(amostra_aleatoria)


## 2

# População total
N <- 15000

# Proporções da população em cada região
proporcao_A <- 0.60
proporcao_B <- 0.25
proporcao_C <- 0.15

# Erro máximo permitido (3%)
e <- 0.03

# Nível de confiança de 95% (valor crítico da distribuição normal)
Z <- 1.96

# Proporção estimada de sucesso (p = 0.5, para o pior caso)
p <- 0.5

# Calcular o tamanho da amostra total ajustado para a população finita
n_total <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Exibir o tamanho da amostra total calculado
cat("Tamanho da amostra total:", n_total, "\n")

# Calcular o tamanho da amostra proporcional para cada estrato (região)
n_A <- ceiling(n_total * proporcao_A)
n_B <- ceiling(n_total * proporcao_B)
n_C <- ceiling(n_total * proporcao_C)

# Exibir o tamanho da amostra para cada região
cat("Tamanho da amostra para a região A:", n_A, "\n")
cat("Tamanho da amostra para a região B:", n_B, "\n")
cat("Tamanho da amostra para a região C:", n_C, "\n")

### 3
# Tamanho da população de clientes
N <- 1000

# Proporção estimada de clientes satisfeitos (50%)
p <- 0.5

# Erro máximo permitido (5%)
e <- 0.05

# Nível de confiança de 95% - valor crítico da distribuição normal
Z <- 1.96

# Calcular o tamanho da amostra ajustado para a população finita
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Exibir o tamanho da amostra calculado
cat("Tamanho da amostra necessário:", n, "\n")

# Calcular o intervalo de amostragem (a cada quantos clientes será feita a seleção)
k <- ceiling(N / n)

# Selecionar a amostra sistemática (selecionar clientes a cada intervalo k)
amostra_sistematica <- seq(from = 1, to = N, by = k)

# Exibir os clientes selecionados para a amostra
cat("Clientes selecionados para a amostra:", amostra_sistematica, "\n")

# Exibir o número de elementos na amostra
cat("Número de elementos na amostra:", length(amostra_sistematica), "\n")e