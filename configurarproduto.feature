#language: pt

Funcionalidade: configurar produto
Como cliente da EBAC-shop
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a qualidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a loja da EBAC-SHOP

Cenario: Selecoes de cor, tamanho e quantidade devem ser obrigatorio
Quando eu selecionar cor "blue,orange,red" , tamanho "xs,s,m,l,xl"
E a quantidade da minha escolha
Entao deve me direcionar para o proximo passo "formas de pagamentos"


Cenario: Deve permitir apenas 10 produtos por venda
Quando eu selecionar 10 produtos
E confirmar a quantidade 
Entao deve me direcionar para o proximo passo "formas de padamentos"


Cenario: limpando o carrinho de compra
Quando eu quiser desistir da compra
E eu clicar no botao "limpar"
Entao deve voltar ao estado original
