# Testes de API - Modelagem (Particionamento de Equivalência)

## Endpoint Testado
**Método:** `POST /cadastro`

## Particionamento de Equivalência - `dataNascimento`

| Índice | Partição              | Descrição                                      | Resultado Esperado                  |
|--------|-----------------------|------------------------------------------------|-------------------------------------|
| P1     | Data inválida         | Formato incorreto ou inexistente               | "Data de nascimento inválida"       |
| P2     | Idade insuficiente    | Usuário com menos de 18 anos                   | "Idade insuficiente"                |
| P3     | Data válida           | Usuário com idade ≥ 18 anos                    | "Registrado com sucesso"            |

### Casos de Teste Derivados

- **CT01** – Partição P1: Data inválida
- **CT02** – Partição P2: Idade insuficiente  
- **CT03** – Partição P3: Data válida
- **CT04** – E-mail inválido
- **CT05** – Senha inválida
