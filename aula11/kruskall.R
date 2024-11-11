# Kruskal-Wallis
library(FSA)
# Refeições x glicose
shapiro.test(dados$glicose)

# H0:os grupos são iguais
# H1:pelo menos um dos grupos é diferente
kruskal.test(glicose ~ refeicoes, data= dados)

boxplot(glicose ~ refeicoes, data = dados)

# Mostrar as diferenças
dunnTest(glicose ~ refeicoes, data = dados)

Summarize(glicose ~ refeicoes, data = dados)
