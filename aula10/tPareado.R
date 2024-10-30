## Antes x depois
shapiro.test(dados$antes)

shapiro.test(dados$depois)

t.test(dados$antes, dados$depois, paired = TRUE)

boxplot(dados$antes, dados$depois)

## Alunos
shapiro.test(dados$antes)

shapiro.test(dados$depois)

t.test(dados$antes, dados$depois, paired = TRUE)

boxplot(dados$antes, dados$depois)

## Ações
shapiro.test(dados$antes)

shapiro.test(dados$depois)

t.test(dados$antes, dados$depois, paired = TRUE)

boxplot(dados$antes, dados$depois)