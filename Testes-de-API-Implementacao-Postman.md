# Implementação dos Testes no Postman

**Collection:** ExameCare - Testes de API  
**Endpoint base:** `http://localhost:8080/cadastro`  
**Headers padrão:** `Content-Type: application/json`

> Importante: crie uma Collection no Postman e adicione as requests abaixo. Em cada request, cole o body JSON e adicione os testes (scripts) apresentados.

---

## CT01 — Cadastro com sucesso

Request: `POST /cadastro`

Body (raw JSON):
```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2000-05-18"
}
```

Tests (Script Postman):
```javascript
pm.test("Status code deve ser 201", function () {
    pm.response.to.have.status(201);
});
pm.test("Mensagem de sucesso", function () {
    var json = pm.response.json();
    pm.expect(json.mensagem).to.eql("Registrado com sucesso");
});
```

---

## CT02 — E-mail inválido

Body:
```json
{
  "email": "usuarioemail.com",
  "senha": "12345678",
  "dataNascimento": "2000-05-18"
}
```

Tests:
```javascript
pm.test("Status code deve ser 400", () => pm.response.to.have.status(400));
pm.test("Mensagem de erro de email", () => {
    pm.expect(pm.response.json().mensagem).to.eql("Email inválido");
});
```

---

## CT03 — Senha inválida (muito curta)

Body:
```json
{
  "email": "usuario@email.com",
  "senha": "1111111",
  "dataNascimento": "2000-05-18"
}
```

Tests (exemplo):
```javascript
pm.test("Status code deve ser 400", () => pm.response.to.have.status(400));
pm.test("Mensagem de erro de senha", () => {
    pm.expect(pm.response.json().mensagem).to.eql("Senha inválida");
});
```

---

## CT04 — Data de nascimento inválida (formato)

Body:
```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2026-15-48"
}
```

Tests:
```javascript
pm.test("Status code deve ser 400", () => pm.response.to.have.status(400));
pm.test("Mensagem de erro de data", () => {
    pm.expect(pm.response.json().mensagem).to.eql("Data de nascimento inválida");
});
```

---

## CT05 — Idade insuficiente

Body:
```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2012-05-18"
}
```

Tests:
```javascript
pm.test("Status code deve ser 400", () => pm.response.to.have.status(400));
pm.test("Mensagem de idade insuficiente", () => {
    pm.expect(pm.response.json().mensagem).to.eql("Idade insuficiente");
});
```

---

## Observações
- Todos os scripts usam `pm.response.json()` para validar a mensagem retornada.  
- Você pode exportar a Collection e anexar o arquivo `.json` ao repositório como evidência de implementação.
