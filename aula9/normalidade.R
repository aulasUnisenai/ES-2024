library(plotly)

# Dados normais
set.seed(123)  # Para tornar os resultados reproduzíveis
dados_normais <- rnorm(50, mean = 0, sd = 1)

# Histograma
windows() # Abrir janela para mostrar o gráfico
hist(dados_normais)
plot_ly(x =dados_normais, type ='histogram')

# QQ-plot
windows() 
qqnorm(dados_normais)
qqline(dados_normais)

# Shapiro
## maior que 0.05 (normal)
## menor que 0.05 (não)
shapiro.test(dados_normais)

# Não Normalidade
set.seed(456)  # Para tornar os resultados reproduzíveis
dados_nao_normais <- rgamma(50, shape = 2, scale = 1)

# Histograma
windows()
hist(dados_nao_normais)

# QQ-plot
windows() 
qqnorm(dados_nao_normais)
qqline(dados_nao_normais)

# Shapiro
shapiro.test(dados_nao_normais)
