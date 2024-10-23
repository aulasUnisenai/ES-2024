# Biblioteca
library(stats)

# Teste
shapiro.test(dados$horas)
shapiro.test(dados$nota1)
shapiro.test(dados$nota2)

# Gráfico
qqnorm(dados$horas)
qqline(dados$horas)

bartlett.test(tempo ~ grupo, data = dados)
boxplot(tempo ~ grupo, data = dados)
