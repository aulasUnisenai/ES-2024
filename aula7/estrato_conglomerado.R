# Tamanho da população por estrato
estrato_A <- 500
estrato_B <- 300
estrato_C <- 200

# Tamanho da amostra total desejada
n_total <- 100

# Tamanho da amostra proporcional para cada estrato
n_A <- ceiling(estrato_A / 1000 * n_total)
n_B <- ceiling(estrato_B / 1000 * n_total)
n_C <- ceiling(estrato_C / 1000 * n_total)

# Gerar uma amostra aleatória de IDs para cada estrato
set.seed(123)
amostra_A <- sample(1:estrato_A, n_A)
amostra_B <- sample(1:estrato_B, n_B)
amostra_C <- sample(1:estrato_C, n_C)

# Exibir os IDs selecionados de cada estrato
cat("Amostra do Estrato A:", amostra_A, "\n")
cat("Amostra do Estrato B:", amostra_B, "\n")
cat("Amostra do Estrato C:", amostra_C, "\n")

# Conglomerados
# Número de conglomerados
conglomerados <- 10

# Número de conglomerados a serem selecionados
n_selecionados <- 3

# Selecionar conglomerados aleatoriamente
set.seed(123)
conglomerados_selecionados <- sample(1:conglomerados, n_selecionados)

# Exibir os conglomerados selecionados
cat("Conglomerados selecionados:", conglomerados_selecionados, "\n")
