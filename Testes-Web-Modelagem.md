# Testes de Interface - Modelagem (Tabela de Decisão)

## Interface Testada
**Cadastro de Usuário** (Tela de registro)

## Tabela de Decisão

| Regra / Condição       | CT01 | CT02 | CT03 | CT04 | CT05 |
|------------------------|:----:|:----:|:----:|:----:|:----:|
| Nome preenchido        | S    | N    | S    | S    | S    |
| Email válido           | S    | S    | N    | S    | S    |
| Senha ≥ 8 caracteres   | S    | S    | S    | N    | S    |
| Confirmação igual      | S    | S    | S    | S    | N    |
| **Resultado Esperado** | Sucesso | Nome obrigatório | Email inválido | Senha inválida | Senhas diferentes |

### Casos de Teste

- **CT01** – Cadastro válido
- **CT02** – Nome obrigatório
- **CT03** – Email inválido
- **CT04** – Senha inválida
- **CT05** – Senhas diferentes
