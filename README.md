# ExameCare

MVP web responsivo para familiares que precisam organizar exames médicos de idosos.

O projeto foi iniciado a partir dos documentos de visão, requisitos e arquitetura fornecidos. 
- cadastro, login, recuperação simulada de senha e logout;
- consentimento LGPD no cadastro;
- cadastro e seleção de múltiplos idosos;
- agendamento, edição, cancelamento e confirmação de exames;
- tipo de exame e especialidade médica por listas padronizadas, conforme Wiki;
- histórico de exames realizados;
- regras de data futura, campos obrigatórios e imutabilidade de exames realizados;
- simulação visual dos lembretes de e-mail para 5 e 1 dias antes do exame;
- interface responsiva com contraste alto opcional.

## Como executar

Abra o arquivo `index.html` diretamente no navegador.

Também é possível iniciar um servidor local:

```bash
python -m http.server 5173
```

Depois acesse `http://localhost:5173`.

## Validação manual

Antes da entrega, valide os fluxos principais:

- criar conta com consentimento LGPD;
- fazer login e logout;
- cadastrar, editar e excluir idoso;
- agendar exame com data futura, tipo, especialidade e local;
- bloquear exame sem campos obrigatórios ou com data inválida;
- editar e cancelar exame agendado com data futura;
- marcar exame como realizado;
- confirmar que exame realizado aparece no histórico e não pode ser editado ou cancelado;
- conferir lembrete visual para exames em 5 ou 1 dias.

## Observação técnica

Esta versão usa `localStorage` para permitir validação rápida do MVP sem backend. Em produção, os documentos indicam evolução para React/Vite no front-end, API REST em NestJS, Prisma e banco relacional PostgreSQL/MySQL, com senhas hasheadas, HTTPS, autenticação JWT e notificações push reais.

---

# Índice — Páginas de Testes (Perguntas 1 → 14)

Este índice lista as páginas de teste criadas no repositório, mapeadas para as perguntas 1 a 14.

1. Pergunta 1 — (não fornecida)
2. Pergunta 2 — (não fornecida)
3. Pergunta 3 — (não fornecida)
4. Pergunta 4 — (não fornecida)
5. Pergunta 5 — [Testes-de-API-Modelagem.md](Testes-de-API-Modelagem.md)
6. Pergunta 6 — [Testes-de-API-Documentacao.md](Testes-de-API-Documentacao.md)
7. Pergunta 7 — [Testes-de-API-Modelagem.md](Testes-de-API-Modelagem.md)
8. Pergunta 8 — [Testes-de-API-Relatorio-Execucao.md](Testes-de-API-Relatorio-Execucao.md)
9. Pergunta 9 — [Testes-Web-Modelagem.md](Testes-Web-Modelagem.md)
10. Pergunta 10 — [Testes-de-API-Implementacao-Postman.md](Testes-de-API-Implementacao-Postman.md)
11. Pergunta 11 — [Testes-Web-Relatorio.md](Testes-Web-Relatorio.md)
12. Pergunta 12 — [Testes-Web-Modelagem.md](Testes-Web-Modelagem.md)
13. Pergunta 13 — [Testes-Web-Implementacao-Robot.md](Testes-Web-Implementacao-Robot.md)
14. Pergunta 14 — [Testes-Web-Relatorio.md](Testes-Web-Relatorio.md)

---

Notas:
- As perguntas 1–4 não tiveram conteúdo fornecido; posso criar as páginas se desejar.
- Diga se prefere um arquivo separado `INDICE-Testes.md` em vez de anexar no `README.md`.
