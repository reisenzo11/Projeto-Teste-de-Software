# Testes de API - Modelagem (Particionamento de Equivalência)

## Objetivo
Modelar casos de teste para o endpoint de cadastro de usuários, cobrindo validações de formato, regras de idade mínima e campos obrigatórios.

## Endpoint testado
**Método:** `POST /cadastro`

## Escopo
- Validação do campo `dataNascimento` (formato e idade mínima)
- Validação de `email` (formato)
- Validação de `senha` (tamanho mínimo)

## Particionamento de Equivalência - `dataNascimento`

| Índice | Partição              | Descrição                                      | Resultado Esperado                  |
|--------|-----------------------|------------------------------------------------|-------------------------------------|
| P1     | Data inválida         | Formato incorreto ou valor impossível (ex: 2026-15-48) | Data de nascimento inválida       |
| P2     | Idade insuficiente    | Usuário com menos de 18 anos                   | Idade insuficiente                  |
| P3     | Data válida           | Usuário com idade ≥ 18 anos                    | Registrado com sucesso             |

## Casos de Teste Derivados (CT)

- **CT01 — Data inválida (P1)**
	- Body exemplo: `{ "email": "usuario@email.com", "senha": "12345678", "dataNascimento": "2026-15-48" }`
	- Resultado esperado: 400 + mensagem "Data de nascimento inválida"

- **CT02 — Idade insuficiente (P2)**
	- Body exemplo: `{ "email": "jovem@email.com", "senha": "12345678", "dataNascimento": "2010-05-18" }`
	- Resultado esperado: 400 + mensagem "Idade insuficiente"

- **CT03 — Data válida (P3)**
	- Body exemplo: `{ "email": "adulto@email.com", "senha": "12345678", "dataNascimento": "1995-05-18" }`
	- Resultado esperado: 201 + mensagem "Registrado com sucesso"

- **CT04 — Email inválido**
	- Body exemplo: `{ "email": "usuarioemail.com", "senha": "12345678", "dataNascimento": "1995-05-18" }`
	- Resultado esperado: 400 + mensagem "Email inválido"

- **CT05 — Senha inválida**
	- Body exemplo: `{ "email": "usuario@email.com", "senha": "1234", "dataNascimento": "1995-05-18" }`
	- Resultado esperado: 400 + mensagem "Senha inválida"

## Observações
- Os casos acima cobrem validações principais e podem ser estendidos com testes de borda (ex.: 17 anos 364 dias).  
- Use os exemplos de body como base para implementar os requests no Postman.
