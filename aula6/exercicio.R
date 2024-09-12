# E1
media <- 50
desvio_padrao <- 5

# Cálculo da probabilidade entre 45 cm e 55 cm
pnorm(55, mean = media, sd = desvio_padrao) - pnorm(45, mean = media, sd = desvio_padrao)

# E2
taxa <- 1/10  # Inverso da média (tempo médio = 10 minutos)

# Cálculo da probabilidade de ser atendido em menos de 5 minutos
pexp(5, rate = taxa)

#E3
min_val <- 1
max_val <- 100

# Cálculo da probabilidade de o número sorteado ser menor que 30
punif(30, min = min_val, max = max_val)

#E4
lambda <- 2  # Média de 2 acidentes por dia

# Cálculo da probabilidade de ocorrer exatamente 3 acidentes
dpois(3, lambda = lambda)

#E5
n <- 10
p <- 0.7

# Cálculo da probabilidade de exatamente 7 clientes aprovarem o produto
dbinom(7, size = n, prob = p)

#E6
p <- 0.8

# Cálculo da probabilidade de o aluno acertar a questão (sucesso)
dbinom(1, size = 1, prob = p)

#E7
media <- 70
desvio_padrao <- 10

# Cálculo da probabilidade entre 60 e 80
pnorm(80, mean = media, sd = desvio_padrao) - pnorm(60, mean = media, sd = desvio_padrao)


#E8
min_val <- 9
max_val <- 17

# Cálculo da probabilidade de o cliente chegar entre 10h e 12h
(12 - 10) / (max_val - min_val)

#E9
n <- 8
p <- 0.4
k <- 5

# Cálculo da probabilidade de exatamente 5 pessoas preferirem trabalhar remotamente
dbinom(k, size = n, prob = p)


#10
# Dados
media <- 1000
taxa <- 1 / media

# Cálculo da probabilidade de uma lâmpada durar mais de 1200 horas
exp(-taxa * 1200)

#11
lambda <- 15
k <- 20

# Cálculo da probabilidade de exatamente 20 chamadas em uma hora
dpois(k, lambda = lambda)