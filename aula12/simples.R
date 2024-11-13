# Bibliotecas
install.packages("FSA")

library(FSA)

# Estatísticas descritivas
as.table(Summarize(dados$idade))

# Estatísticas descritivas
as.table(Summarize(dados$patentes))

# Verificar normalidade das variáveis
shapiro.test(dados$idade)
shapiro.test(dados$patentes)

# Verificar relação
cor.test(dados$idade, dados$patentes, method='pearson')

# Rodar a regressão
# sempre variável resposta (y) em relação à dependente (x)
regressao <- lm(dados$patentes ~ dados$idade)

# Verificar a regressão
summary(regressao)

# Demonstrar relação graficamente
windows()
plot(dados$idade, dados$patentes)
abline(regressao, col = "red", lwd = 2)

# Verificar normalidade dos resíduos
shapiro.test(regressao$residuals)
