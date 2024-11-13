# Normalidade
shapiro.test(dados$notas)
shapiro.test(dados$qi)

# Ver relação
plot(dados$notas, dados$qi)
correlacao <- cor.test(dados$notas, dados$qi, method = 'spearman')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) *100
R2