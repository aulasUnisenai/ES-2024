# Instalações
install.packages('FSA')

# Bibliotecas
library(FSA)
library(stats)

# Mann-Whitney
# Dia x esporte

# Normalidade
shapiro.test(dados$quarta)

qqnorm(dados$quarta)
qqline(dados$quarta)

# Variância
bartlett.test(quarta ~ esporte, data = dados)

# H0:os grupos são iguais
# H1:os grupos são diferentes
wilcox.test(quarta ~ esporte, data = dados)

boxplot(quarta ~ esporte, data = dados)

Summarize(quarta ~ esporte, data = dados)

# Vendas x empresa
shapiro.test(dados$vendas)

wilcox.test(vendas ~ empresa, data = dados)

boxplot(vendas ~ empresa, data = dados)

Summarize(vendas ~ empresa, data = dados)