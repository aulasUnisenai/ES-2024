# Biblioteca
install.packages('stats')
library(stats)

# Criar os grupos de dados
grupo1 <- rnorm(50, mean = 0, sd = 1)
grupo2 <- rnorm(50, mean = 0, sd = 1)

# Criar um vetor de grupos para identificar a que grupo cada observação pertence
grupos <- rep(c("Grupo 1", "Grupo 2"), each = 50)

# Criar um dataframe com os dados e grupos
dados <- data.frame(Grupo = grupos, Valor = c(grupo1, grupo2))

# Boxplot
windows()
boxplot(grupo1,grupo2)

# Realizar o teste de Bartlett
bartlett.test(Valor ~ Grupo, data = dados)

# Não 
# Criar um grupo com variância não homogênea
grupo_nao_homogeneo1 <- rnorm(25, mean = 5, sd = 2)
grupo_nao_homogeneo2 <- rnorm(25, mean = 5, sd = 4)

# Criar um vetor de grupos para identificar a que grupo cada observação pertence
grupos <- rep(c("grupo_nao_homogeneo1", "grupo_nao_homogeneo2"), each = 25)

# Criar um dataframe com os dados e grupos
dados <- data.frame(Grupo = grupos, Valor = c(grupo_nao_homogeneo1, grupo_nao_homogeneo2))

# Boxplot
windows()
boxplot(grupo_nao_homogeneo1,grupo_nao_homogeneo2)

# Realizar o teste de Bartlett
bartlett.test(Valor ~ Grupo, data = dados)
