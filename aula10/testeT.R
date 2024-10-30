# Bibliotecas
library(FSA)
library(stats)

##Vendas##
# Normalidade
shapiro.test(dados$vendas)

qqnorm(dados$vendas)
qqline(dados$vendas)

# Variância
bartlett.test(vendas ~ empresa, data = dados)
boxplot(vendas ~ empresa, data = dados)

# teste T
t.test(dados$vendas~dados$empresa)

## Carga ##
# Normalidade
shapiro.test(dados$carga)

# Variância
bartlett.test(carga ~ etaria, data = dados)

# teste T
t.test(carga ~ etaria, data = dados)

## Programa ##
# Normalidade
shapiro.test(dados$idade)

# Variância
bartlett.test(idade ~ programa, data = dados)

# teste T
t.test(idade ~ programa, data = dados)

## Período x idade

# Normalidade
shapiro.test(dados$idade)

# Variância
bartlett.test(idade ~ periodo, data = dados)

# teste T
t.test(idade ~ periodo, data = dados)
boxplot(idade ~ periodo, data = dados)