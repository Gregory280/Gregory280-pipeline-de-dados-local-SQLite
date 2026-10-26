CREATE TABLE fato_pagamento (
    pagamento_id INTEGER NOT NULL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    matricula_id INTEGER,
    plano_id INTEGER,
    competencia TEXT,
    valor NUMERIC,
    valor_pago NUMERIC,
    data_vencimento TEXT,
    data_pagamento TEXT,
    forma_pagamento TEXT,
    status TEXT
);