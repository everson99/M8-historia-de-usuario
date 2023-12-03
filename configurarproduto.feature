            #language: pt

            Funcionalidade: configurar produto
            Como cliente da EBAC-shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a qualidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a loja da EBAC-SHOP

            Cenario: Seleções de cor, tamanho e quantidade devem ser obrigatorio
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


            Esquema do Cenario: Seleções de cor , tamanho e quantidade do produto
            Quando eu selecionar <cor> , <tamanho>
            E <quantidade>
            Então deve me direcionar para o proximo passo <formas de pagamentos>

            Exemplos: Positivo
            | cor      | tamanho | comportamento | formas de pagamentos       |
            | "blue"   | "xs"    | "válido"      | "vou para o proximo passo" |
            | "orange" | "s"     | "válido"      | "vou para o proximo passo" |
            | "red"    | "m"     | "válido"      | "vou para o proximo passo" |


            Exemplos: Negativo
            | cor    | tamanho | comportamento | mensagem                                                   |
            | "blue" | "ND"    | "invalido"    | "A escolha do tamanho do produto é obrigatoria"            |
            | "ND"   | "s"     | "invalido"    | "A escolha da cor do produto é obrigatoria"                |
            | "ND"   | "ND"    | "invalido"    | "A escolha da cor e do tamanho do produto são obrigatoria" |

