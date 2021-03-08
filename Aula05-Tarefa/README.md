# 05.1 - WebApp de cálculo de juros simples (servlet)

Crie um projeto de aplicação web em Java utilizando o NetBeans com os seguintes requisitos:

- Uma página inicial chamada index.html com seu nome e número de matrícula, além de um formulário com as entradas para valor presente, juros (em %) e tempo (em meses) e que invoque a requisição “/juros-simples.html”
- Um servlet chamado JurosSimplesServlet que responda a url “/juros-simples.html” que mostre os dados enviados pelo formulário e o resultado final (valor futuro) de acordo com a fórmula abaixo:

VF = VP (1+ j \* n), onde:

- VF = Valor Futuro
- VP = Valor Presente
- j = taxa de juros
- n = número de períodos (meses)

Deve ser entregue como anexo: 

1. O link do projeto no GitHub
2. Printscreens do projeto aberto no NetBeans e das páginas abertas no navegador