#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitiante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email           | neves@gmail.com     |
            | senha           | mat123              |
            | senhas_confirma | mat123              |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email           | <email>           |
            | senha           | <senha>           |
            | senhas_confirma | <senhas_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email            | senha  | senhas_confirma | mensagem_saida                       |
            |                  | mat123 | mat123          | Oops! Informe seu email.             |
            | neves@gmail.com  |        |                 | Oops! Informe sua senha.             |
            | neves@gmail.com  | mat123 | 123mat          | Oops! Senhas não são iguais.         |
            |                  |        |                 | Oops! Informe seu email e sua senha. |

    @temp
    Cenário: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"