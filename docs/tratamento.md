# Tratamento dos dados

## Alunos

| Campo | Tratamento |
|---|---|
| aluno_id | — |
| nome | Remover espaços no ínicio e no final. |
| email | Remover espaços nas extremidades e padronizar letras minúsculas. |
| telefone | Remover caracteres de formatação e espaços. |
| sexo | — |
| data_nascimento | Converter data numérica do Excel para DD-MM-AAAA. |
| cidade | — |
| estado | — |
| data_matricula | Converter data numérica do Excel para DD-MM-AAAA. |
| status | — |

**Orientações gerais para esta tabela:**

* Preservar alunos inativos.
* Não excluir alunos por falta de e-mail ou telefone.


## Planos

| Campo | Tratamento |
|---|---|
| plano_id | — |
| nome_plano | — |
| tipo | — |
| duracao_meses | — |
| valor_mensal | — |


## Matrículas

| Campo | Tratamento |
|---|---|
| matricula_id | — |
| aluno_id | — |
| plano_id | — |
| data_inicio | Converter data numérica do Excel para DD-MM-AAAA. |
| data_fim | Converter data numérica do Excel para DD-MM-AAAA. |
| data_fim_prevista | Converter data numérica do Excel para DD-MM-AAAA. |
| status | — |
| motivo_cancelamento | — |

**Orientações gerais para esta tabela:**

* Preservar matrículas encerradas e canceladas.

## Pagamentos

| Campo | Tratamento |
|---|---|
| pagamento_id | — |
| aluno_id | — |
| matricula_id | — |
| plano_id | — |
| competencia | Padronizar para MM-AAAA. |
| valor | Padronizar unidade monetária. |
| valor_pago | Valor 0 é diferente de valor ausente. |
| data_vencimento | Converter data numérica do Excel para DD-MM-AAAA. |
| data_pagamento | Converter data numérica do Excel para DD-MM-AAAA. |
| forma_pagamento | — |
| status | — |


## Presenças

| Campo | Tratamento |
|---|---|
| presenca_id | — |
| aluno_id | — |
| matricula_id | — |
| data | Converter data numérica do Excel para DD-MM-AAAA. |
| hora_entrada | Converter a fração númerica de dia do Excel para HH:MM |
| modalidade | — |
