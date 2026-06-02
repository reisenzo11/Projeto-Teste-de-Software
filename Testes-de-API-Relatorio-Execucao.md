# Relatório de Execução de Testes – API de Cadastro de Usuário

**Data de execução:** 23/05/2026  
**Ambiente:** Local (Postman)  
**Endpoint:** `POST /cadastro`

## Casos de Teste e Evidências

### CT01 – Cadastro com dados válidos
- **Resultado esperado:** 201 – Registrado com sucesso
- **Resultado obtido:** 201 – Registrado com sucesso
- **Status:** ✅ Aprovado

**Evidência:**
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

### CT02 – E-mail inválido

- **Resultado esperado:** 400 – Email inválido

- **Resultado obtido:** 400 – Email inválido

- **Status:** ✅ Aprovado

### CT03 – Senha inválida

- **Resultado esperado:** 400 – Senha inválida

- **Resultado obtido:** 400 – Senha inválida

- **Status:** ✅ Aprovado

### CT04 – Data de nascimento inválida

- **Resultado esperado:** 400 – Data de nascimento inválida

- **Resultado obtido:** 400 – Data de nascimento inválida

- **Status:** ✅ Aprovado

### CT05 – Idade insuficiente

- **Resultado esperado:** 400 – Idade insuficiente

- **Resultado obtido:** 400 – Idade insuficiente

- **Status:** ✅ Aprovado

## Resumo dos Resultados

Total de testesAprovadosReprovados550

## Conclusão

Os testes executados apresentaram conformidade com o comportamento esperado do endpoint, sem divergências entre resultado obtido e resultado esperado.
