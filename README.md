# Mercado de games

*Esse projeto foi desenvolvido para o curso Profissão: Analista de Dados da EBAC. As informações a seguir são explicações de como foram feitas as etapas para chegar no resultado.*

## Introdução

A indústria de jogos eletrônicos tem demonstrado crescimento nos últimos anos. Com isso, foram feitos alguns questionamentos para um melhor entendimento das vendas desse setor. 

- Qual gênero mais popular entre os anos de 2000 e 2010?
- Jogos multiplataforma venderam mais que jogos lançados apenas em uma plataforma?
- Quais empresas mais venderam jogos?
- Qual ano com a maior quantidade de vendas?
- Quais outras observações podem ser extraídas?

Foi utilizado o conjunto de dados disponível no [Kaggle](https://www.kaggle.com/datasets/gregorut/videogamesales) a partir de informações obtidas do site [VGChartz](https://www.vgchartz.com/) entre os anos de 1980 e 2020*. O dataset contém jogos que tiveram mais de 100.000 unidades vendidas.

Para a análise foi utilizado **SQL**.

Observações:

- O dataset não considera jogos de celular
- Há alguns valores nulos
- *O dataset apresenta um erro onde não há dados suficientes no período de 2017 à 2020
 
  ![image1](https://github.com/jpfreire0/mercado-jogos/blob/main/image1.png?raw=true)
  
## Análise

- O gênero com maior valor no número de vendas entre os anos de 2000 e 2010 é o de **Ação**.

``` sql
SELECT "Genre", SUM("Global_Sales") AS "Soma de vendas"
FROM vgsales 
WHERE "Year" > 1999 and "Year" < 2011
GROUP BY Genre 
ORDER BY "Soma de vendas" DESC
```

![image2](https://github.com/jpfreire0/mercado-jogos/blob/main/image2.png?raw=true)

- Jogos únicos venderam mais que jogos multiplataforma, porém proporcionalmente os multiplataformas renderam mais.

``` sql
SELECT "Type", COUNT(*) AS "Total", SUM("Global_Sales") AS "Soma de vendas"
FROM (
    SELECT "Global_Sales", "Name",
           CASE
               WHEN COUNT(*) > 1 THEN 'Multiplataforma'
               ELSE 'Jogo único'
           END AS "Type"
    FROM vgsales
    GROUP BY "Name"
) 
GROUP BY "Type";
```
![image3](https://github.com/jpfreire0/mercado-jogos/blob/main/image3.png?raw=true)

- As empresas (publishers) com maiores faturamentos:

``` sql
SELECT "Publisher", "Global_Sales"
FROM vgsales
group BY "Publisher"
ORDER BY "Global_Sales" DESC
```

 ![image4](https://github.com/jpfreire0/mercado-jogos/blob/main/image4.png?raw=true)

- Ano com a maior quantidade de vendas
  
``` sql
SELECT "Year", "Global_Sales"
FROM vgsales
group BY "Year"
ORDER BY "Global_Sales" DESC
```

![image5](https://github.com/jpfreire0/mercado-jogos/blob/main/image5.png?raw=true) 

- Porcentagem de vendas por região
``` sql
SELECT (SUM("NA_Sales") / SUM("Global_Sales")) * 100 AS "NA", (SUM("EU_Sales")/ SUM("Global_Sales")) * 100 AS "EU", (SUM("JP_Sales")/ SUM("Global_Sales")) * 100 AS "JP", (SUM("Other_Sales")/ SUM("Global_Sales")) * 100 AS "Other"
FROM vgsales
```
 ![image6](https://github.com/jpfreire0/mercado-jogos/blob/main/image6.png?raw=true)

## Conclusões

- O gênero com maior número de vendas entre 2000 e 2010 foi **Ação**.
- No geral jogos **em apenas uma plataforma venderam mais** que jogos lançados em multiplataforma, porém jogos **multiplataformas venderam mais por unidade**.
- **Nintendo** foi a empresa/publicadora com mais unidades vendidas.
- **2006** foi o ano com o maior faturamento.
- A região da **América do Norte** representa aproximadamente 49,3% das vendas.
