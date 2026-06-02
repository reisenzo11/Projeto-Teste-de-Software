# Implementação dos Testes no Postman

**Endpoint base:** `http://localhost:8080/cadastro`

**Configuração padrão:**
- Headers: `Content-Type: application/json`

## Casos de Teste

### CT01 – Cadastro com sucesso
**Body:**
```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2000-05-18"
}
```

**Testes (Postman):**

```javascript
pm.test("Status code deve ser 201", function () {
    pm.response.to.have.status(201);
});

pm.test("Mensagem de sucesso", function () {
    var json = pm.response.json();
    pm.expect(json.mensagem).to.eql("Registrado com sucesso");
});
```

### CT02 – E-mail inválido

**Body:** (e-mail sem @)

```json
{
  "email": "usuarioemail.com",
  "senha": "12345678",
  "dataNascimento": "2000-05-18"
}
```

**Testes:**

```javascript
pm.test("Status code deve ser 400", () => pm.response.to.have.status(400));
pm.test("Mensagem de erro de email", () => {
    var json = pm.response.json();
    pm.expect(json.mensagem).to.eql("Email inválido");
});
```

### CT03 – Senha inválida

**Body:** (senha muito curta)

```json
{
  "email": "usuario@email.com",
  "senha": "1111111",
  "dataNascimento": "2000-05-18"
}
```

### CT04 – Data de nascimento inválida

**Body:**

```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2026-15-48"
}
```

### CT05 – Idade insuficiente

**Body:**

```json
{
  "email": "usuario@email.com",
  "senha": "12345678",
  "dataNascimento": "2012-05-18"
}
```
