# Documentação da API - Cadastro de Usuário

## Endpoint
**POST** `/cadastro`

## Descrição
Responsável pelo cadastro de novos usuários no sistema.

## Requisição

### Headers
- `Content-Type: application/json`

### Body

```json
{
  "email": "string",
  "senha": "string",
  "dataNascimento": "YYYY-MM-DD"
}
```

## Respostas

### 201 - Registrado com sucesso

JSON

```
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

### Erros (400)

- **Email inválido**

- **Senha inválida**

- **Data de nascimento inválida**

- **Idade insuficiente**
