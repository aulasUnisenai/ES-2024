install.packages('FSA')

library(FSA)
library(stats)

# Disciplina x notas
# Normalidade
shapiro.test(dados$nota)

# Variância
bartlett.test(nota ~ disciplina, data = dados)

# Realizar o teste
summary(aov(dados$nota~dados$disciplina))

# Boxplot
boxplot(nota ~ disciplina, data = dados)

# Verificar diferenças
TukeyHSD(aov(dados$nota~dados$disciplina))

# Estatísticas descritivas
Summarize(nota ~ disciplina, data = dados)

# Visitas x vendas
# Normalidade
shapiro.test(dados$vendas)

# Variância
bartlett.test(vendas ~ visitas, data = dados)

# Realizar o teste
summary(aov(vendas ~ visitas, data = dados))

# Boxplot
boxplot(vendas ~ visitas, data = dados)

# Verificar diferenças
TukeyHSD(aov(vendas ~ visitas, data = dados))

# Estatísticas descritivas
Summarize(vendas ~ visitas, data = dados)

# Vendedores x vendas

# Normalidade
shapiro.test(dados$vendas)

# Variância
bartlett.test(vendas ~ visitas, data = dados)

# Realizar o teste
summary(aov(vendas ~ representante, data = dados))

# Boxplot
boxplot(vendas ~ representante, data = dados)

# Verificar diferenças
TukeyHSD(aov(vendas ~ representante, data = dados))

# Estatísticas descritivas
Summarize(vendas ~ representante, data = dados)

# Função x voto
# Normalidade
shapiro.test(dados$intencao)

# Variância
bartlett.test(intencao ~ tipo, data = dados)

# Realizar o teste
summary(aov(intencao ~ tipo, data = dados))

# Boxplot
boxplot(intencao ~ tipo, data = dados)

# Verificar diferenças
TukeyHSD(aov(intencao ~ tipo, data = dados))

# Estatísticas descritivas
Summarize(intencao ~ tipo, data = dados)