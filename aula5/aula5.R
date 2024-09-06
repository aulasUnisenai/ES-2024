### 1
set.seed(123)
lancamentos <- sample(c("cara", "coroa"), size = 10, 
                      replace = TRUE)

num_caras <- sum(lancamentos == "cara")
num_caras

### 2
casos_possiveis <- 6  # Total de faces do dado
casos_favoraveis <- 2  # 5 e 6 são os números maiores que 4

# Calculando a probabilidade
probabilidade <- casos_favoraveis / casos_possiveis

# Imprimindo o resultado
cat("A probabilidade de tirar um número maior que 4 é:", probabilidade)

### 3
set.seed(123)
resultados <- sample(1:6, size = 50, replace = TRUE)

# Criando uma tabela de frequências
tabela_frequencias <- table(resultados)

# Calculando as frequências relativas
frequencias_relativas <- tabela_frequencias / length(resultados)

# Exibindo as frequências relativas
print(frequencias_relativas)

### 4
# Definindo os eventos
maior_3 <- 3 # 4,5,6
numeros_pares <- 2 # 4, 6

# Calculando a probabilidade condicional diretamente
probabilidade_condicional <- numeros_pares / maior_3
  
# Imprimindo o resultado
cat("A probabilidade de o número ser par, dado que é maior que 3, é:", 
    probabilidade_condicional)

### 5
probabilidade_par <- 3/6 # (2, 4, 6) / 6 resultados possíveis
print(probabilidade_par)

### 6
# Probabilidade de sair "cara" em um único lançamento
cara <- 1 / 2

# Probabilidade de sair "cara" em ambos os lançamentos
cara_duas_vezes <- cara * cara

# Exibir a probabilidade
cat("Probabilidade de sair cara nas duas vezes:", cara_duas_vezes)

### 7
# Total de cartas no baralho
total_cartas <- 52

# Ases no baralho
total_ases <- 4

# Probabilidade de tirar um ás
prob_as <- total_ases / total_cartas

# Exibir a probabilidade
cat("Probabilidade de tirar um ás:", prob_as)

### 8
# Número total de bolas na urna
total_bolas <- 8

# Número de bolas azuis na urna
bolas_azuis <- 3

# Calcular a probabilidade de tirar uma bola azul
prob_bola_azul <- bolas_azuis / total_bolas

# Exibir a probabilidade
cat("Probabilidade de tirar uma bola azul:", prob_bola_azul)

### 9
# Número total de combinações possíveis
total_combinacoes <- 6 * 6

# Número de combinações que resultam em soma 7
combinacoes_sete <- 6

# Calcular a probabilidade de a soma ser 7
prob_soma_sete <- combinacoes_sete / total_combinacoes

# Exibir a probabilidade
cat("Probabilidade de a soma dos resultados ser 7:", prob_soma_sete)

### 10
# Número total de cartas no baralho
total_cartas <- 52

# Número de reis e damas no baralho
reis_damas <- 8

# Calcular a probabilidade de tirar um rei ou uma dama
rei_ou_dama <- reis_damas / total_cartas

# Exibir a probabilidade
cat("Probabilidade de tirar um rei ou uma dama:", rei_ou_dama)

### 11
# Probabilidade de retirar uma bola vermelha em um sorteio
vermelha <- 4 / 10

# Calcular a probabilidade de ambas as bolas serem vermelhas
ambas_vermelhas <- vermelha * vermelha

# Exibir a probabilidade
cat("Probabilidade de ambas as bolas serem vermelhas:", ambas_vermelhas)

### 12
# Número total de combinações possíveis
total_combinacoes <- 6 * 6

# Número de combinações em que os dois dados mostram o mesmo número
iguais <- 6

# Calcular a probabilidade de obter dois números iguais
numeros_iguais <- iguais / total_combinacoes

# Exibir a probabilidade
cat("Probabilidade de obter dois números iguais:", numeros_iguais)


### 13
vermelhas <- 5

total_restante <- 11

# Calcular a probabilidade de retirar uma bola vermelha
prob_vermelha <- vermelhas / total_restante
cat("Probabilidade é:", prob_vermelha)
