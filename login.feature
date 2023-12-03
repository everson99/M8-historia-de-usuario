        #language: pt

        Funcionalidade: login na plataforma
        Como cliente da EBAC-shop
        Quero fazer login na plataforma
        Para visualizar meus produtos

        Contexto:
        Dado que eu consiga a autenticação na plataforma da Ebac-shop

        Cenario: autenticação válida
        Quando eu digitar o Email "Henrique96@gmail.com"
        E a senha "87654321"
        Então devo ser direcionado para tela inicial da plataforma


        Cenario: Email invalido
        Quando eu digitar o Email "Henrique@gmail.com"
        E a senha "87654321"
        Entao deve aparecer a mensagem "Email ou senha invalida"


        Cenario: Senha invalida
        Quando eu digitar o Email "Henrique96@gmail.com"
        E a senha "12345678"
        Então deve aparecer a mensagem "Email ou senha invalida"


        Cenario: usuario não cadastrado
        Quando eu digitar o Email "Henrique@gmail.com"
        E a senha "12345678"
        Entao deve aperecer a mensagem "usuario não cadastrado"


        Esquema do Cenario: Autenticar multiplos usuarios
        Quando eu digitar o <usuario>
        E a <senha>
        Então deve exibir a <mensagem> de sucesso

        Examples: positivo
            | usuario                | senha      | mensagem       |
            | "Henrique96@gmail.com" | "87654321" | "olá Henrique" |
            | "Carlos77@gmail.com"   | "732002"   | "olá Carlos"   |
            | "Paula@gmail.com"      | "12345678" | "olá Paula"    |
            | "AnaSilva@gmail.com"   | "32256780" | "olá Ana"      |


            Exemplos: Negativo

            | usuario                | senha      | comportamento | mensagem                  |
            | "Henrique@gmail.com    | "7654321"  | "invalido"    | "Email ou senha invalida" |
            | "Henrique96@gmail.com" | "12345678" | "invalido"    | "Email ou senha invalida" |
            | "Henrique@gmail.com"   | "12345678" | "invalido"    | "usuario não cadastrado"  |