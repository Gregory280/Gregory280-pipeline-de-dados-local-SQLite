DELETE FROM fato_pagamento;

INSERT INTO fato_pagamento (
    pagamento_id,
    aluno_id,
    matricula_id,
    plano_id,
    competencia,
    valor,
    valor_pago,
    data_vencimento,
    data_pagamento,
    forma_pagamento,
    status
)

SELECT
  pagamento_id,
  aluno_id,
  matricula_id,
  plano_id,
  competencia,
  valor,
  valor_pago,
  data_vencimento,
  data_pagamento,
  forma_pagamento,
  status
FROM
  stg_pagamentos;