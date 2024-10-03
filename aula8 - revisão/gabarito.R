# Bibliotecas
library(plotly)
library(FSA)

## P1
media_idh_muni <- mean(dados$idhMunicipal)
sd_idh_muni <- sd(dados$idhMunicipal)

prob_0_82 <- pnorm(0.82, mean = media_idh_muni, sd = sd_idh_muni)
prob_0_78 <- pnorm(0.78, mean = media_idh_muni, sd = sd_idh_muni)

probabilidade <- prob_0_82 - prob_0_78
probabilidade * 100

# Histograma
plot_ly(x= dados$idhMunicipal, type = 'histogram')

## P2
casos_favoraveis <- sum(dados$idhRenda <0.75)
total_casos <- length(dados$idhRenda)
probabilidade_menor_075 <- casos_favoraveis/total_casos
probabilidade_menor_075

## P3
set.seed(123)  # Para reprodutibilidade
amostra <- sample(dados$idhLongevidade, 10)

# Calcular a média do IDH Longevidade da amostra
media_amostra <- mean(amostra)
print(media_amostra)

# Proporção
proporcao_maior_082 <- sum(amostra > 0.82) / length(amostra)
print(proporcao_maior_082)

# P4
Summarize(dados$idhMunicipal)

# P5
N <- 329628
p <- 0.5 # Proporção estimada
e <- 0.03
Z <- 1.96 # Valor crítico para 95% de confiança

# Cálculo do tamanho da amostra
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))
n

# P7
N <- 329628
p <- 0.6 # Proporção estimada
e <- 0.04
Z <- 1.96 # Valor crítico para 95% de confiança

# Cálculo do tamanho da amostra
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))
n

# P8
populacao_total <- 329628
porcentagem_jovens <- 0.30
total_entrevistas <- 150

# Cálculo do número de jovens e adultos
jovens_selecionados <- porcentagem_jovens * total_entrevistas
adultos_selecionados <- (1 - porcentagem_jovens) * total_entrevistas

# Resultados
cat("Número de jovens selecionados:", round(jovens_selecionados), "\n")
cat("Número de adultos selecionados:", round(adultos_selecionados), "\n")


# P11
# Definindo os dados
populacao_total <- 329628
porcentagem_criancas <- 0.25
porcentagem_adolescentes <- 0.15
porcentagem_adultos <- 0.60
entrevistas_totais <- 600

# Cálculo do número de pessoas em cada estrato
num_criancas <- populacao_total * porcentagem_criancas
num_adolescentes <- populacao_total * porcentagem_adolescentes
num_adultos <- populacao_total * porcentagem_adultos

# Cálculo do número de entrevistas para cada estrato
entrevistas_criancas <- entrevistas_totais * porcentagem_criancas
entrevistas_adolescentes <- entrevistas_totais * porcentagem_adolescentes
entrevistas_adultos <- entrevistas_totais * porcentagem_adultos

# Resultados
cat("Total de crianças:", round(num_criancas), "\n")
cat("Total de adolescentes:", round(num_adolescentes), "\n")
cat("Total de adultos:", round(num_adultos), "\n")
cat("Entrevistas para crianças:", round(entrevistas_criancas), "\n")
cat("Entrevistas para adolescentes:", round(entrevistas_adolescentes), "\n")
cat("Entrevistas para adultos:", round(entrevistas_adultos), "\n")

# P12
# Definindo os dados
populacao_total <- 329628
tamanho_amostra <- 1000

# 1. Cálculo do intervalo de seleção (k)
k <- populacao_total / tamanho_amostra

# 2. Seleção do primeiro indivíduo aleatoriamente
# Definindo os dados
populacao_total <- 329628
tamanho_amostra <- 1000

# 1. Cálculo do intervalo de seleção (k)
k <- populacao_total / tamanho_amostra

# Exibindo o intervalo de seleção
cat("Intervalo de seleção (k):", round(k), "\n")

# P13
# Definindo a taxa média de emergências por hora (lambda)
lambda <- 4

# 1. Probabilidade de exatamente 6 emergências em uma hora
prob_6_emergencias <- dpois(6, lambda)
cat("Probabilidade de exatamente 6 emergências em uma hora:", prob_6_emergencias, "\n")

# 2. Probabilidade de menos de 3 emergências em uma hora
prob_menos_3_emergencias <- ppois(2, lambda)  # ppois acumula até 2
cat("Probabilidade de menos de 3 emergências em uma hora:", prob_menos_3_emergencias, "\n")

# P14
# Definindo os limites da temperatura (mínimo e máximo)
temp_min <- 18
temp_max <- 32

# 1. Probabilidade de que a temperatura seja inferior a 24°C
prob_menor_24 <- punif(24, min = temp_min, max = temp_max)
cat("Probabilidade de que a temperatura seja inferior a 24°C:", prob_menor_24, "\n")

# 2. Probabilidade de que a temperatura esteja entre 25°C e 30°C
prob_entre_25_e_30 <- punif(30, min = temp_min, max = temp_max) - punif(25, min = temp_min, max = temp_max)
cat("Probabilidade de que a temperatura esteja entre 25°C e 30°C:", prob_entre_25_e_30, "\n")