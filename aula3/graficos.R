# Instalar pacotes
install.packages('plotly')
install.packages('dplyr')

# Bibliotecas
library(plotly)
library(dplyr)

# Barras - interativo
freq_contrato <- dados %>%
  group_by(tipoContrato) %>%
  summarise(frequencia = n())

plot_ly(freq_contrato, x = ~tipoContrato, y = ~frequencia, type = 'bar')

# Barras - tradicional
table(dados$tipoContrato)
barplot(table(dados$tipoContrato))

# Pizza  - interativo
freq_regiao <- dados %>%
  group_by(regiao) %>%
  summarise(frequencia = n())

plot_ly(freq_regiao, labels = ~regiao, values = ~frequencia, type = 'pie')

# Pizza - tradicional
table(dados$regiao)
pie(table(dados$regiao))

# Dispersão - interativo
plot_ly(dados, x = ~idade, y = ~salario, type = 'scatter', mode = 'markers')

# Dispersão - tradicional
plot(dados$idade, dados$salario)

# Histograma - interativo
plot_ly(dados, x = ~salario, type = 'histogram')

# Histograma - tradicional
hist(dados$salario)

# Boxplot - interativo
plot_ly(dados, y = ~salario, type = 'box')
plot_ly(dados, x= ~satisfacaoEmpresa, y = ~salario, type = 'box')

# Boxplot - tradicional
boxplot(dados$salario)
boxplot(dados$salario ~dados$satisfacaoEmpresa)

# QQ-Plot - tradicional 
qqnorm(dados$salario)
qqline(dados$salario)