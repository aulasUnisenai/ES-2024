# Instalar
install.packages('openxlsx')

# Bibliotecas
library(FSA)
library(plotly)
library(openxlsx)

# 1
# b
quantitativas <- c('idade', 'renda', 'satisfacao_curso')

for (i in quantitativas) {
  resultado_summarize <- Summarize(dados[[i]], na.rm =TRUE)
  cat("Resumo da variável", i, ":\n")
  print(round(resultado_summarize, 4))
  cat("\n")
}

# c
qualitativas <- c('sexo', 'educacao')

for (i in qualitativas) {
  resultado_qualitativo <-  prop.table(table(dados[[i]]))
  cat("Resumo da variável", i, ":\n")
  print(round(resultado_qualitativo,4) *100)
  cat("\n")
}

# d
plot_ly(dados, x =~idade, type = 'histogram')

# 2
# a 
set.seed(42)
amostra <- dados[sample(nrow(dados), 120),replace= FALSE]
amostra

# Salvar em Excel
write.xlsx(amostra, file = "amostra.xlsx")

# b
Summarize(amostra$idade~amostra$sexo)

# c
Summarize(amostra$renda~amostra$sexo)

# d
prop.table(table(amostra$sexo, amostra$educacao), 2)

# 3
# a
plot_ly(amostra, x = ~renda, type = 'histogram')

# b
Summarize(amostra$renda)

# c
plot_ly(amostra, x=~educacao, y=~idade, type = 'box',boxpoints = "all")

# d
plot_ly(amostra, x=~idade, y=~renda, type='scatter', mode ='markers')

# 4
# a
plot_ly(amostra,x = ~sexo, y = ~satisfacao_curso , type = 'box')

# c
total <- nrow(amostra)
maior_7 <- sum(amostra$satisfacao_curso >7)
probabilidade <- maior_7/total
probabilidade* 100

# d
total_masculino <- sum(amostra$sexo == "Masculino")
sm7 <- sum(amostra$satisfacao_curso > 7 & amostra$sexo == "Masculino")
probabilidade_masculina <- sm7 / total_masculino
probabilidade_masculina * 100