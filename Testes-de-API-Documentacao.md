# Documentação da API - Cadastro de Usuário

## Visão Geral
Endpoint responsável por criar novos usuários no sistema. Recebe `email`, `senha` e `dataNascimento` e aplica validações de formato e regras de negócio.

## Endpoint
**POST** `/cadastro`

## Requisição

### Headers
- `Content-Type: application/json`

### Body (JSON)

```json
{
  "email": "usuario@email.com",
  "senha": "string (mínimo 8 caracteres)",
  "dataNascimento": "YYYY-MM-DD"
}
```

## Respostas

### 201 - Registrado com sucesso

Exemplo de resposta:

```json
{
  "status": "sucesso",
  "mensagem": "Registrado com sucesso",
  "dados": {
    "idUsuario": "a1b2c3d4",
    "email": "usuario@email.com",
    "dataCriacao": "2026-05-23T10:15:30Z"
  }
}
```

### 400 - Bad Request (erros de validação)

Corpo de resposta esperado em erros de validação:

```json
{
  "status": "erro",
  "mensagem": "<mensagem de erro explicativa>",
  "detalhes": {
    "campo": "<nome do campo>",
    "erro": "<descrição do problema>"
  }
}
```

Erros possíveis (exemplos):
- `Email inválido` — formato do email incorreto
- `Senha inválida` — senha com menos de 8 caracteres
- `Data de nascimento inválida` — formato inválido ou data impossível
- `Idade insuficiente` — usuário menor de 18 anos

## Observações de uso
- Todos os campos são obrigatórios.  
- Utilize timezone/ISO date (`YYYY-MM-DD`).  
- Em produção, retornar códigos e mensagens consistentes auxilia automação dos testes.
