*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         http://localhost:3000/cadastro
${BROWSER}     chrome

*** Test Cases ***
CT01 - Cadastro válido
Open Browser    ${URL}    ${BROWSER}
Input Text    id=nome    João Silva
Input Text    id=email    [joao@email.com](mailto:joao@email.com)
Input Password    id=senha    12345678
Click Button    id=btnCadastrar
Close Browser

CT02 - Email inválido
Open Browser    ${URL}    ${BROWSER}
Input Text    id=nome    João Silva
Input Text    id=email    joaoemail.com
Input Password    id=senha    12345678
Click Button    id=btnCadastrar
Close Browser

```
```
