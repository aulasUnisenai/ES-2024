library(FSA)

# Criar variáveis
y  = dados$defeitos
x1 = dados$tempo
x2 = dados$extras

# Estatísticas descritivas
Summarize(y)

# Estatísticas descritivas
Summarize(x1)

# Estatísticas descritivas
Summarize(x2)

# Verificar normalidade das variáveis
shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2)

# Verificar relação
cor.test(y, x1, method = 'pearson')

# Verificar relação
cor.test(y, x2, method = 'pearson')

# Rodar a regressão
regressao = lm(y~ x1+ x2)
summary(regressao)

# Rodar a regressão
regressao = lm(y~ x2)
summary(regressao)
