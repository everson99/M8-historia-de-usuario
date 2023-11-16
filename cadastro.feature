#languge: pt

Funcionalidade: tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que estou na pagina de cadastro da EBAC-shop

Cenario: cadastro de um novo usuario com sucesso
Quando preencho os campos obrigatorios "Email*, senha*, cpf* e CEP*"
E clicar no botão "cadastrar"
Então devo ver uma mensagem de "cadastro realizado com sucesso"


Cenario: Email com formato invalido
Quando preencho o campo de Email com o endereço invalido como "henrique@henrique.com"
E preencho os outros campos corretamente
Então deve aparecer a seguinte mensagem "formato de Email invalido"



Cenario: tentativa de cadastro com campo obrigatorio vazio
Quando deixo um dos campos obrigatorios vazios "Email*, senha*, cpf* ou CEP"
E clico no botão "cadastrar"
Então deve aparecer a seguinte mensagem "Campo obrigatorio não preenchido"





