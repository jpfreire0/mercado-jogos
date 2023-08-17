# Mercado de games

*Esse projeto foi desenvolvido como conclusão do curso de certificação de Data Analytics do Google. A visualização produzida pode ser acessada [aqui](https://public.tableau.com/app/profile/jpfreire/viz/Mercadodegames/Regio). As informações a seguir são explicações de como foram feitas as etapas para chegar no resultado.*

## Introdução

A indústria de jogos eletrônicos tem demonstrado crescimento nos últimos anos. Com isso, foram feitos alguns questionamentos para um melhor entendimento das vendas desse setor. 

- Qual gênero mais popular entre os anos de 2000 e 2010?
- Jogos multiplataforma venderam mais que jogos lançados apenas em uma plataforma?
- Quais empresas mais venderam jogos?
- Qual ano com a maior quantidade de jogos vendidos?
- Quais outras observações podem ser extraídas?

Foi utilizado o conjunto de dados disponível no [Kaggle](https://www.kaggle.com/datasets/gregorut/videogamesales) a partir de informações obtidas do site [VGChartz](https://www.vgchartz.com/) entre os anos de 1980 e 2020. O dataset contém jogos que tiveram mais de 100.000 unidades vendidas.

As ferramentas utilizadas foram o **Google Sheets** e **Tableau**.

Observações:

- O dataset não considera jogos de celular
## Análise

Para a análise foram produzidas tabelas dinâmicas com os cálculos necessários para obter as respostas. O primeiro ponto observado é que existe correlação entre o número de jogos lançados e o número de unidades vendidas. 

![Untitled](https://i.imgur.com/SxHJTmI.png)

O gênero que mais aparece entre os anos de 2000 e 2010 é o de Ação.

![Untitled](https://i.imgur.com/mMGzdhj.png)

Foi necessário identificar quais eram os jogos que apareceram mais de uma vez e os que apareceram apenas uma. Com isso foi adicionado uma coluna para identificar a quantidade de vezes que um jogo aparece na lista.

Uma descoberta é que jogos multiplataforma aparecem em menor quantidade, mas venderam mais do que os que foram lançados apenas em uma plataforma. Isso não necessariamente significa que jogos que aparecem 1 vez na lista não tiveram outras versões que podem ter vendido menos unidades e não computado para a lista. 

![Untitled](https://i.imgur.com/eGL3wQ3.png)

A empresa que aparece com a maior quantidade de unidades vendidas é a Nintendo

![Untitled](https://i.imgur.com/mFvX8A5.png)

2008 foi o ano com a maior quantidade de vendas

![Untitled](https://i.imgur.com/I9M7bTF.png)

A região da América do Norte representa 49,3% das vendas

![Untitled](https://i.imgur.com/jA22J6W.png)

## Conclusão

### [Link para a apresentação](https://drive.google.com/file/d/1Ht0hCdF7D_5zZUGyvSmeHzFW5Cjtpqqp/view?usp=share_link)

- O gênero com maior número de vendas entre 2000 e 2010 foi Ação.
- Jogos multiplataforma venderam mais que jogos lançados em uma plataforma
- Nintendo foi a publicadora com mais unidades vendidas
- 2008 foi o ano com a maior quantidade de vendas
- Playstation 2 foi a plataforma com mais unidades de jogos vendidas
- A região da América do Norte representa 49,3% das vendas
- Correlação entre o número de jogos lançados e o número de unidades vendidas


