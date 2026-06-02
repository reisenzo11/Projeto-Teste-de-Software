# Implementação dos Testes Automatizados - Robot Framework + SeleniumLibrary

**Arquivo principal:** `cadastro.robot`

```robotframework
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        http://localhost:3000/cadastro
${BROWSER}    chrome

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Preencher Campos
    [Arguments]    ${nome}    ${email}    ${senha}    ${confirmar}
    Input Text    id=nome    ${nome}
    Input Text    id=email   ${email}
    Input Password    id=senha    ${senha}
    Input Password    id=confirmar    ${confirmar}

Clicar em Cadastrar
    Click Button    id=btnCadastrar

Validar Mensagem
    [Arguments]    ${mensagem}
    Element Text Should Be    id=mensagem    ${mensagem}

*** Test Cases ***
CT01 - Cadastro com dados válidos
    Abrir Navegador
    Preencher Campos    João Silva    joao@email.com    12345678    12345678
    Clicar em Cadastrar
    Validar Mensagem    Cadastro realizado com sucesso

CT02 - Nome obrigatório
    Abrir Navegador
    Preencher Campos        joao@email.com    12345678    12345678
    Clicar em Cadastrar
    Validar Mensagem    Nome obrigatório

CT03 - Email inválido
    Abrir Navegador
    Preencher Campos    João Silva    joaoemail.com    12345678    12345678
    Clicar em Cadastrar
    Validar Mensagem    Email inválido

CT04 - Senha inválida
    Abrir Navegador
    Preencher Campos    João Silva    joao@email.com    1234567    1234567
    Clicar em Cadastrar
    Validar Mensagem    Senha inválida

CT05 - Senhas diferentes
    Abrir Navegador
    Preencher Campos    João Silva    joao@email.com    12345678    87654321
    Clicar em Cadastrar
    Validar Mensagem    Senhas diferentes
```

*(Os scripts seguem o padrão mostrado nas imagens fornecidas.)*
