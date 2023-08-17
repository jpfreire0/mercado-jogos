# Mercado de games

*Esse projeto foi desenvolvido para o curso Profissão: Analista de Dados da EBAC. As informações a seguir são explicações de como foram feitas as etapas para chegar no resultado.*

## Introdução

A indústria de jogos eletrônicos tem demonstrado crescimento nos últimos anos. Com isso, foram feitos alguns questionamentos para um melhor entendimento das vendas desse setor. 

- Qual gênero mais popular entre os anos de 2000 e 2010?
- Jogos multiplataforma venderam mais que jogos lançados apenas em uma plataforma?
- Quais empresas mais venderam jogos?
- Qual ano com a maior quantidade de jogos vendidos?
- Quais outras observações podem ser extraídas?

Foi utilizado o conjunto de dados disponível no [Kaggle](https://www.kaggle.com/datasets/gregorut/videogamesales) a partir de informações obtidas do site [VGChartz](https://www.vgchartz.com/) entre os anos de 1980 e 2020*. O dataset contém jogos que tiveram mais de 100.000 unidades vendidas.

Para a análise foram utilizados **SQL** e **Python**.

Observações:

- O dataset não considera jogos de celular
- *O dataset apresenta um erro onde não há dados suficientes no período de 2017 à 2020
 
  ![Erro](https://github.com/jpfreire0/mercado-jogos/blob/main/image1.png?raw=true)

## Análise

O gênero que com maior valor no número de vendas entre os anos de 2000 e 2010 é o de **Ação**.

``` sql
SELECT "Genre", SUM("Global_Sales") AS "Soma de vendas"
FROM vgsales 
WHERE "Year" > 1999 and "Year" < 2011
GROUP BY Genre 
ORDER BY "Soma de vendas" DESC
```

![Untitled](https://github.com/jpfreire0/mercado-jogos/blob/main/image2.png?raw=true)



## Conclusão

### [Link para a apresentação](https://drive.google.com/file/d/1Ht0hCdF7D_5zZUGyvSmeHzFW5Cjtpqqp/view?usp=share_link)

- O gênero com maior número de vendas entre 2000 e 2010 foi Ação.
- Jogos multiplataforma venderam mais que jogos lançados em uma plataforma
- Nintendo foi a publicadora com mais unidades vendidas
- 2008 foi o ano com a maior quantidade de vendas
- Playstation 2 foi a plataforma com mais unidades de jogos vendidas
- A região da América do Norte representa 49,3% das vendas
- Correlação entre o número de jogos lançados e o número de unidades vendidas


