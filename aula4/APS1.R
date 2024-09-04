# Bibliotecas
library(plotly)
library(FSA)
library(dplyr)

### 2 ### 
# Contar o número de registros por data
totais_diarios <- as.data.frame(table
                                (dados$data_notificacao))

# Alterar o nome das colunas
colnames(totais_diarios) <- c("Data", "Ocorrências")

# Gráfico de linhas - dinâmico
plot_ly(totais_diarios, x = ~Data, 
        y = ~Ocorrências, type = 'scatter',
        mode = 'lines')

### 3 ###
table(dados$sexo)
round(prop.table(table(dados$sexo)),2)

### 4 ###
casos_bairros <- dados %>%
  group_by(bairro_residencia) %>%
  summarise(contagem = n()) %>%
  arrange(desc(contagem)) 

casos_bairros

### 5 ###
table(dados$local_infeccao)
round(prop.table(table(dados$local_infeccao)),4)

### 6 ###
table(dados$criterio_confirmacao)
round(prop.table(table(dados$criterio_confirmacao)),4)

### 7 ###
as.data.frame(round(prop.table(table(dados$evolucao)),4))

### 8 ###
plot_ly(dados, x=~idade, type = 'histogram')

### 9 ###
round(Summarize(dados$idade),2)

### 10 ###
Summarize(dados$idade~dados$sexo)

### 11 ###
percentual_zero <- round(Summarize(dados$idade),2)
cat(percentual_zero['percZero']*100,'%')

### 12 ###
Summarize(dados$idade~dados$local_infeccao)

### 13 ###
Summarize(dados$idade~dados$evolucao)

### 14 ###
Summarize(dados$idade~dados$criterio_confirmacao)

### 15 ###
sexo_evolucao <- dados %>%
  group_by(sexo, evolucao) %>%
  summarise(contagem = n()) %>%
  arrange(desc(contagem))

sexo_evolucao

### 16 ###
sexo_confirmacao <- dados %>%
  group_by(sexo, criterio_confirmacao) %>%
  summarise(contagem = n()) %>%
  arrange(desc(contagem))

sexo_confirmacao

### 17 ###
prop.table(table(dados$evolucao,dados$local_infeccao),1)

### 18 ###
max(dados$data_notificacao) - min(dados$data_notificacao)

### 19 ###
Summarize(dados$idade~dados$evolucao)

### 20 ###
idade_bairro <- dados %>%
  group_by(bairro_residencia) %>%
  summarise(
    mean_idade = mean(idade),
    sd_idade = sd(idade)
  ) %>%
  arrange(desc(mean_idade))

idade_bairro