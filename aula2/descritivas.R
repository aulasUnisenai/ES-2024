# Pacotes necessários
install.packages('FSA')
install.packages('modeest')

# Declarar os pacotes
library(FSA)
library(modeest)

# Estatísticas descritivas - geral
# Média
mean(dados$idade)

# Mediana
median(dados$idade)

# Moda
moda <- mlv(dados$idade, method = "mfv")
cat(moda)

# Amplitude
amplitude <- max(dados$idade) - min(dados$idade)
amplitude

# Desvio padrão
sd(dados$idade)

# Quartis
quartis <- quantile(dados$idade)
quartis

# Estatísticas descritivas - turmas
turmaA <- subset(dados, turma == 'A')
turmaA

turmaB <- subset(dados, turma == 'B')
turmaB

# Maneira prática
# Estatística descritiva geral
Summarize(dados$idade)

# Estatística descritiva - turmas
Summarize(dados$idade~dados$turma)
