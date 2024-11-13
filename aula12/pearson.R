# Normalidade
shapiro.test(dados$x)
shapiro.test(dados$y)

# Ver a relação
windows()
plot(dados$x, dados$y)

# Correlação
## H0: não há correlação significativa entre as variáveis
## H1: existe correlação  significativa entre as variáveis
correlacao <- cor.test(dados$x, dados$y, method = 'pearson')
correlacao

# Verificar a variação da variável dependente
R2 = as.numeric(correlacao$estimate ^ 2) *100
R2
